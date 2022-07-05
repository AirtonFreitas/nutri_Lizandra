import 'package:flutter/material.dart';
import 'package:realiza_nutri/modules/home/components/body_home_widget.dart';

import '../navigation/navigation_page_widget.dart';
import 'components/app_bar.dart';
import 'components/drawer_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarHomeWidget(
          imageBar: 'pera',
          title: 'Realiza Nutri',
        ),
      ),
      drawer: DrawerApp(),
      body: BodyHomeWidget(),
      bottomNavigationBar: NavigationPageWidget(),
    );
  }
}
