import 'package:flutter/material.dart';
import '../modules/home/components/app_bar.dart';

//import '../modules/revenues/revenues_item_widget.dart';
import '../modules/package_complete/package_completed_page.dart';
import '../src/utils/drawer_app.dart';
import 'package:realiza_nutri/modules/before_and_after/before_and_after_page.dart';
import 'package:realiza_nutri/modules/chat/chat_page.dart';
import 'package:realiza_nutri/modules/food_plan/food_plan_page.dart';
import 'package:realiza_nutri/modules/healthy_habits/healthy_habits_page.dart';
import 'package:realiza_nutri/modules/home/home_page.dart';
import 'package:realiza_nutri/modules/main_errors/main_errors_page.dart';
import 'package:realiza_nutri/modules/my_profile/my_profile_page.dart';
import 'package:realiza_nutri/modules/shedule_your_consultation/shedule_your_consultation_page.dart';
import 'package:realiza_nutri/modules/tips/nutritional_tips_page.dart';
import 'package:realiza_nutri/modules/revenues/revenues_page.dart';
import 'package:realiza_nutri/modules/profile_nutri/profile_nutri_page.dart';


class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case 'before-and-after':
        return MaterialPageRoute(builder: (_) => BeforeAndAfterScreen());
      case 'chat':
        return MaterialPageRoute(builder: (_) => ChatScreen());
      case 'food-plan':
        return MaterialPageRoute(builder: (_) => FoodPlanScreen());
      case 'healthy-habits':
        return MaterialPageRoute(builder: (_) => HealthyScreen());
      case 'main-errors':
        return MaterialPageRoute(builder: (_) => MainErrosScreen());
      case 'profile':
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case 'revenues':
        return MaterialPageRoute(builder: (_) => RevenuesScreen());
      case 'shedule-consultation':
        return MaterialPageRoute(builder: (_) => SheduleConsultationScreen());
      case 'tips':
        return MaterialPageRoute(builder: (_) => TipsScreen());
      case 'profile_nutri':
        return MaterialPageRoute(builder: (_) => ProfileNutriScreen());
      case 'premium-package':
        return MaterialPageRoute(builder: (_) => PacoteCompleto());
            // case 'revenues-item':
            // return MaterialPageRoute(builder: (_) => RevenuesItem());
            default:
            _erroRoute();
    }
  }

  static Route<dynamic> _erroRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(65),
          child: AppBarHomeWidget(
            imageBar: 'erro',
            title: 'Erro',
          ),
        ),
        drawer: DrawerApp(),
        body: Text('Página não encontrada'),
      );
    });
  }
}
