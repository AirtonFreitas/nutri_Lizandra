import 'package:flutter/material.dart';
import 'package:realiza_nutri/ui/registration/registration_profile_page.dart';
import '../ui/before_and_after/before_and_after_page.dart';
import '../ui/chat/chat_page.dart';
import '../ui/food_plan/food_plan_page.dart';
import '../ui/healthy_habits/healthy_habits_page.dart';
import '../ui/main_errors/main_errors_page.dart';
import '../ui/my_profile/my_profile_page.dart';
import '../ui/navigation/navigation_page.dart';
import '../ui/package_complete/package_completed_page.dart';
import '../ui/profile_nutri/profile_nutri_page.dart';
import '../ui/revenues/revenue_page_widget.dart';
import '../src/utils/drawer_app.dart';
import '../ui/shedule_your_consultation/shedule_your_consultation_page.dart';
import '../ui/tips/nutritional_tips_page.dart';

class RouteGenerator {

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
        return MaterialPageRoute(builder: (_) => RegistrationProfile());
      // case 'registration-age': (context){
      //   {
      //     final args = ModalRoute.of(context)?. settings.arguments as Map;
      //     return WhatsAge(arguments: args['namePerson']);
      //   }};
      // break;
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
