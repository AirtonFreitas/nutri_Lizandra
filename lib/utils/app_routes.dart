import 'package:flutter/material.dart';
import 'package:realiza_nutri/ui/registration/registration_profile_page.dart';
import '../ui/before_and_after/before_and_after_page.dart';
import '../ui/chat/chat_page.dart';
import '../ui/food_plan/food_plan_page.dart';
import '../ui/healthy_habits/healthy_habits_page.dart';
import '../ui/main_errors/main_errors_page.dart';
import '../ui/my_profile/edit_my_profile_page.dart';
import '../ui/my_profile/my_profile_page.dart';
import '../ui/navigation/navigation_page.dart';
import '../ui/profile_nutri/profile_nutri_page.dart';
import '../ui/revenues/revenue_page_widget.dart';
import '../src/utils/drawer_app.dart';
import '../ui/shedule_your_consultation/shedule_your_consultation_page.dart';
import '../ui/tips/nutritional_tips_page.dart';

class RouteGenerator {

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(builder: (_) => const NavigationPage());
      case 'before-and-after':
        return MaterialPageRoute(builder: (_) => const BeforeAndAfterScreen());
      case 'chat':
        return MaterialPageRoute(builder: (_) => const ChatScreen());
      case 'food-plan':
        return MaterialPageRoute(builder: (_) => const FoodPlanScreen());
      case 'healthy-habits':
        return MaterialPageRoute(builder: (_) => const HealthyScreen());
      case 'main-errors':
        return MaterialPageRoute(builder: (_) => const MainErrosScreen());
      case 'profile':
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
        case 'edit-profile':
        return MaterialPageRoute(builder: (_) => const EditProfile());
      case 'revenues':
        return MaterialPageRoute(builder: (_) => const RevenueDetails());
      case 'shedule-consultation':
        return MaterialPageRoute(builder: (_) => const SheduleConsultationScreen());
      case 'tips':
        return MaterialPageRoute(builder: (_) => const TipsScreen());
      case 'profile_nutri':
        return MaterialPageRoute(builder: (_) => const ProfileNutriScreen());
      case 'registration-name':
        return MaterialPageRoute(builder: (_) => const RegistrationProfile());
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
      return const Scaffold(
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
