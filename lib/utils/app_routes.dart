import 'package:flutter/material.dart';
import 'package:realiza_nutri/modules/registration/whatName.dart';
import '../modules/package_complete/package_completed_page.dart';
import '../modules/registration/whatAge.dart';
import '../modules/revenues/revenue_page_widget.dart';
import '../src/utils/drawer_app.dart';
import 'package:realiza_nutri/modules/before_and_after/before_and_after_page.dart';
import 'package:realiza_nutri/modules/chat/chat_page.dart';
import 'package:realiza_nutri/modules/food_plan/food_plan_page.dart';
import 'package:realiza_nutri/modules/healthy_habits/healthy_habits_page.dart';
import 'package:realiza_nutri/modules/navigation/navigation_page.dart';
import 'package:realiza_nutri/modules/main_errors/main_errors_page.dart';
import 'package:realiza_nutri/modules/my_profile/my_profile_page.dart';
import 'package:realiza_nutri/modules/shedule_your_consultation/shedule_your_consultation_page.dart';
import 'package:realiza_nutri/modules/tips/nutritional_tips_page.dart';
import 'package:realiza_nutri/modules/profile_nutri/profile_nutri_page.dart';

class RouteGenerator {
  static var args;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(builder: (_) => NavigationPage());
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
        return MaterialPageRoute(builder: (_) => RevenueDetails());
      case 'shedule-consultation':
        return MaterialPageRoute(builder: (_) => SheduleConsultationScreen());
      case 'tips':
        return MaterialPageRoute(builder: (_) => TipsScreen());
      case 'profile_nutri':
        return MaterialPageRoute(builder: (_) => ProfileNutriScreen());
      case 'premium-package':
        return MaterialPageRoute(builder: (_) => PacoteCompleto());
      case 'registration-name':
        return MaterialPageRoute(builder: (_) => WhatsName());
      case 'registration-age':
        return MaterialPageRoute(builder: (_) => WhatsAge(name: args));
      default:
        _erroRoute();
    }
  }

  static Route<dynamic> _erroRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(65),
          child: Text('ERROR'),
        ),
        drawer: DrawerApp(),
        body: Text('Página não encontrada'),
      );
    });
  }
}
