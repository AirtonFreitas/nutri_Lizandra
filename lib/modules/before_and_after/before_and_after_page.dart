import 'package:flutter/material.dart';
import '../navigation/navigation_bottom_widget.dart';
import 'components/app_bar.dart';
import '../../src/utils/drawer_app.dart';
import 'components/body_before_and_after_widget.dart';

class BeforeAndAfterScreen extends StatefulWidget {
  const BeforeAndAfterScreen({Key? key}) : super(key: key);

  @override
  State<BeforeAndAfterScreen> createState() => _BeforeAndAfterScreenState();
}

class _BeforeAndAfterScreenState extends State<BeforeAndAfterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarHomeWidget(
          imageBar: 'pera',
          title: 'Antes e Depois',
        ),
      ),
      drawer: DrawerApp(),
      body: BodyBeforeAndAfterWidget(),
      bottomNavigationBar: NavigationPageWidget(),
    );
  }
}
