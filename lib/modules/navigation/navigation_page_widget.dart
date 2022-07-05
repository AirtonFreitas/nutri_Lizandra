import 'package:flutter/material.dart';
import '../../src/utils/colors_utils.dart';
import 'bottom_navigation_item_widget.dart';

class NavigationPageWidget extends StatefulWidget {
  const NavigationPageWidget({Key? key}) : super(key: key);

  @override
  State<NavigationPageWidget> createState() => _NavigationPageWidgetState();
}

class _NavigationPageWidgetState extends State<NavigationPageWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',

    ),
    Text(
      'Index 1: Business',

    ),
    Text(
      'Index 2: School',

    ),
    Text(
      'Index 3: Settings',

    ),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: ColorsUtils.greenPrimary,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationItemWidget().item(title: 'Inicio', image: 'home'),
        BottomNavigationItemWidget().item(title: 'Perfil', image: 'person'),
        BottomNavigationItemWidget()
            .item(title: 'Plano Alimentar', image: 'plan'),
        BottomNavigationItemWidget().item(title: 'Chat Nutri', image: 'chat'),
      ],
      selectedItemColor: ColorsUtils.greenTitle,
      onTap: _onTap,

      // currentIndex: a,
      // onTap: _onItemTapped,
    );
  }




}
