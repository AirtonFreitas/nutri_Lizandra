import 'package:flutter/material.dart';
import '../navigation/navigation_bottom_widget.dart';
import 'components/app_bar.dart';
import '../../src/utils/drawer_app.dart';
import 'components/body_plan_widget.dart';

class FoodPlanScreen extends StatefulWidget {
  const FoodPlanScreen({Key? key}) : super(key: key);

  @override
  State<FoodPlanScreen> createState() => _FoodPlanScreenState();
}

class _FoodPlanScreenState extends State<FoodPlanScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(22),
      ),
    ),
      child: BodyPlanWidget(),

    );
  }
}
