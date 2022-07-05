import 'package:flutter/material.dart';
import 'package:realiza_nutri/modules/home/home_page.dart';
import 'package:realiza_nutri/src/utils/colors_utils.dart';

import 'utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Realiza Nutri',
      theme: ThemeData(
        primaryColor: ColorsUtils.greenSecondary,
        accentColor: ColorsUtils.greenPrimary,
        primarySwatch: Colors.green,
        buttonTheme: ButtonThemeData(
          buttonColor: ColorsUtils.greenSecondary,textTheme: ButtonTextTheme.accent,
        ),
        textTheme: ThemeData.light().textTheme.copyWith(headline6: TextStyle(fontFamily: 'GeosansLight'))
        ),
      home: const HomePage(),
      routes: {
        AppRoutes.HOME: (ctx) => HomePage(),
        AppRoutes.MY_PROFILE: (ctx) => HomePage(),
        AppRoutes.FOOD_PLAN: (ctx) => HomePage(),
        AppRoutes.CHAT: (ctx) => HomePage(),
        AppRoutes.NUTRITIONAL_TIPS: (ctx) => HomePage(),
        AppRoutes.FIT_REVENUES: (ctx) => HomePage(),
        AppRoutes.HEALTHY_HABITS: (ctx) => HomePage(),
        AppRoutes.MAIN_ERRORS: (ctx) => HomePage(),
        AppRoutes.BEFORE_AND_AFTER: (ctx) => HomePage(),
        AppRoutes.SCHEDULE_YOUR_CONSULTATION: (ctx) => HomePage(),
      },
    );
  }
}