import 'package:flutter/material.dart';
import '../../src/utils/colors_utils.dart';
import 'components/app_bar.dart';
import 'components/body_main_errors_widget.dart';

class MainErrosScreen extends StatefulWidget {
  const MainErrosScreen({Key? key}) : super(key: key);

  @override
  State<MainErrosScreen> createState() => _MainErrosScreenState();
}

class _MainErrosScreenState extends State<MainErrosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.greenPrimary,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarMainErrorWidget(
          title: 'Principais erros',
        ),
      ),
      body: const BodyErrosMainWidget(),
    );
  }
}
