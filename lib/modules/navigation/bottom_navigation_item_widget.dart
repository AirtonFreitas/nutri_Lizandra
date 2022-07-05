import 'package:flutter/material.dart';
import 'package:realiza_nutri/src/utils/colors_utils.dart';

class BottomNavigationItemWidget {
  BottomNavigationBarItem item({required String image, required String title}) {
    return BottomNavigationBarItem(
        icon: Image.asset('assets/images_navigation/$image.png',width: 28, height: 28, color: ColorsUtils.greenNav,),
        activeIcon: Image.asset('assets/images_navigation/$image.png',width: 28, height: 28, color: ColorsUtils.greenNavActive,),
    label: title);
  }
}