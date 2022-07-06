import 'package:flutter/material.dart';
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
      initialRoute: 'home',
      onGenerateRoute: RouteGenerator.generateRoute,
      );
  }
}