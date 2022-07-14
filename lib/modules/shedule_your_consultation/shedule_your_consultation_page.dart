import 'package:flutter/material.dart';
import '../navigation/navigation_bottom_widget.dart';
import 'components/app_bar.dart';
import '../../src/utils/drawer_app.dart';
import 'components/body_shedule_widget.dart';


class SheduleConsultationScreen extends StatefulWidget {
  const SheduleConsultationScreen({Key? key}) : super(key: key);

  @override
  State<SheduleConsultationScreen> createState() => _SheduleConsultationScreenState();
}

class _SheduleConsultationScreenState extends State<SheduleConsultationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarHomeWidget(
          imageBar: 'pera',
          title: 'Agende sua Consulta',
        ),
      ),
      drawer: DrawerApp(),
      body: BodySheduleWidget(),
      bottomNavigationBar: NavigationPageWidget(),
    );
  }
}
