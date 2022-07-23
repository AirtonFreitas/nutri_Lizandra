import 'package:flutter/material.dart';
import '../chat/chat_page.dart';
import '../food_plan/food_plan_page.dart';
import '../my_profile/my_profile_page.dart';
import '../navigation/navigation_bottom_widget.dart';
import 'components/app_bar.dart';
import '../../src/utils/drawer_app.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarHomeWidget(
          imageBar: 'pera',
          title: 'Realiza Nutri',
        ),
      ),
      drawer: DrawerApp(),
      body: PageView(
        children: [
            //HomeScreen(),
            ProfileScreen(),
            FoodPlanScreen(),
            ChatScreen()
        ],
      ),
      bottomNavigationBar: NavigationPageWidget(),
    );
  }
}
