import 'package:flutter/material.dart';
import 'package:realiza_nutri/modules/revenues/components/cards/package_completed_widget.dart';

import 'components/body_revenue_free_widget.dart';
import 'components/body_revenue_pro_widget.dart';

class RevenuesProandFree extends StatelessWidget {
  const RevenuesProandFree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(height: 32),
        PacoteCompleto(),
        BodyRevenueProWidget(),
        SizedBox(height: 32),
        BodyRevenueFreeWidget(),
      ],
    ));
  }
}
