import 'package:flutter/material.dart';
import 'body_revenues_widget.dart';
import 'components/app_bar.dart';

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
        child: AppBarRevenueWidget(
          imageBar: 'pera',
          title: 'Receitas Fit',
        ),
      ),
      body: RevenuesPro(),
    );
  }
}
