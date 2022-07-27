import 'package:flutter/material.dart';
import 'package:realiza_nutri/modules/revenues/components/title_body_revenues_widget.dart';
import '../package_complete/package_premium_widget.dart';
import 'components/body_revenue_free_widget.dart';

class RevenuesPro extends StatelessWidget {
  const RevenuesPro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(height: 18),
        RevenueTitleBody(),
        BodyRevenueFreeWidget(),
        SizedBox(height: 18),
        PackagePremium(),

      ],
    ));
  }
}
