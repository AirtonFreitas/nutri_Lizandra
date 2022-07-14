import 'package:flutter/material.dart';
import '../navigation/navigation_bottom_widget.dart';
import 'components/app_bar.dart';
import '../../src/utils/drawer_app.dart';
import 'components/body_healthy_widget.dart';


class HealthyScreen extends StatefulWidget {
  const HealthyScreen({Key? key}) : super(key: key);

  @override
  State<HealthyScreen> createState() => _HealthyScreenState();
}

class _HealthyScreenState extends State<HealthyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarHomeWidget(
          imageBar: 'pera',
          title: 'Hábitos Sudáveis',
        ),
      ),
      drawer: DrawerApp(),
      body: BodyHealthyWidget(),
      bottomNavigationBar: NavigationPageWidget(),
    );
  }
}
