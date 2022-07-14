import 'package:flutter/material.dart';
import '../navigation/navigation_bottom_widget.dart';
import 'components/app_bar.dart';
import '../../src/utils/drawer_app.dart';
import 'components/body_revenue_widget.dart';


class RevenuesScreen extends StatefulWidget {
  const RevenuesScreen({Key? key}) : super(key: key);

  @override
  State<RevenuesScreen> createState() => _RevenuesScreenState();
}

class _RevenuesScreenState extends State<RevenuesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarHomeWidget(
          imageBar: 'pera',
          title: 'Receitas Fit',
        ),
      ),
      drawer: DrawerApp(),
      body: BodyRevenueWidget(),
      bottomNavigationBar: NavigationPageWidget(),
    );
  }
}
