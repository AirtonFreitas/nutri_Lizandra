import 'package:flutter/material.dart';
import '../../src/utils/colors_utils.dart';
import '../chat/chat_page.dart';
import '../food_plan/food_plan_page.dart';
import '../home/home_page.dart';
import '../my_profile/my_profile_page.dart';
import 'app_bar.dart';
import 'bottom_navigation_item_widget.dart';
import '../../src/utils/drawer_app.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPage();
}

class _NavigationPage extends State<NavigationPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarNavigationWidget(
          imageBar: 'pera',
          title: 'Realiza Nutri',
        ),
      ),
      drawer: DrawerApp(),
      body:
      Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationItemWidget().item(title: 'Inicio', image: 'home'),
          BottomNavigationItemWidget().item(title: 'Perfil', image: 'person'),
          BottomNavigationItemWidget().item(title: 'Plano Alimentar', image: 'plan'),
          BottomNavigationItemWidget().item(title: 'Chat Nutri', image: 'chat'),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorsUtils.greenTitle,
        onTap: _onItemTapped,
      ),
    );
  }

  static const List<Widget> _widgetOptions = <Widget>[
          HomeScreen(),
          ProfileScreen(),
          FoodPlanScreen(),
          ChatScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}