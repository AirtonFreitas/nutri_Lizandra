import 'package:flutter/material.dart';
import 'package:realiza_nutri/src/utils/colors_utils.dart';
import 'utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saúde nas mãos',
      theme: ThemeData(
        fontFamily: 'GeosansLight',
        primaryColor: ColorsUtils.greenSecondary,
        accentColor: ColorsUtils.greenPrimary,
        primarySwatch: Colors.green,
        buttonTheme: ButtonThemeData(
          buttonColor: ColorsUtils.greenSecondary,textTheme: ButtonTextTheme.accent,
        ),
       textTheme: ThemeData.light().textTheme.copyWith(headline6: TextStyle(fontFamily: 'GeosansLight'))
        ),
      initialRoute: 'splash',
      onGenerateRoute: RouteGenerator.generateRoute,
      );
  }
}