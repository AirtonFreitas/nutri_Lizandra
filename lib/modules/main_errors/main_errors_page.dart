import 'package:flutter/material.dart';
import '../navigation/navigation_bottom_widget.dart';
import 'components/app_bar.dart';
import '../../src/utils/drawer_app.dart';
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarHomeWidget(
          imageBar: 'pera',
          title: 'Principais erros',
        ),
      ),
      body: BodyErrosMainWidget(),
    );
  }
}
