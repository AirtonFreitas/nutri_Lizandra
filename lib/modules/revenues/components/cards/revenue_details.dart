import 'package:flutter/material.dart';

import '../app_bar.dart';

class RevenueDetails extends StatelessWidget {

  RevenueDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarRevenueWidget(
          imageBar: 'pera',
          title: 'title',
        ),
      ),
    );
  }
}
