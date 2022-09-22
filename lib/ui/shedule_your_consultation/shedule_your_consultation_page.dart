import 'package:flutter/material.dart';
import 'package:realiza_nutri/src/utils/colors_utils.dart';

import 'components/app_bar.dart';
import 'components/body_shedule_widget.dart';

class SheduleConsultationScreen extends StatefulWidget {
  const SheduleConsultationScreen({Key? key}) : super(key: key);

  @override
  State<SheduleConsultationScreen> createState() =>
      _SheduleConsultationScreenState();
}

class _SheduleConsultationScreenState extends State<SheduleConsultationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ColorsUtils.greenPrimary,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarSheduleWidget(
          title: 'Agende sua Consulta',
        ),
      ),
      body: const BodySheduleWidget(),
    );
  }
}
