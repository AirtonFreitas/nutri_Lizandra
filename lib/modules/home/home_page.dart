import 'package:flutter/material.dart';
import 'package:realiza_nutri/modules/home/components/body_home_widget.dart';
import '../navigation/navigation_page_widget.dart';
import 'components/app_bar.dart';
import '../../src/utils/drawer_app.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
