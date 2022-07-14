import 'package:flutter/material.dart';
import 'package:realiza_nutri/modules/chat/chat_page.dart';
import 'package:realiza_nutri/modules/food_plan/food_plan_page.dart';
import 'package:realiza_nutri/modules/home/home_page.dart';
import 'package:realiza_nutri/modules/my_profile/my_profile_page.dart';

import 'navigation_bottom_widget.dart';
class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

  @override
  void initState() {
    store.changeIndex(0);
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_){
      return Scaffold(
        backgroundColor: Colors.white,
        body: PageView(children: [HomeScreen(), ProfileScreen(), FoodPlanScreen(), ChatScreen()],controller: store.pageController),
        bottomNavigationBar: NavigationPageWidget(changeIndex: store.changePage,index: store.index),
      );
    });''
  }
}
