import 'package:flutter/material.dart';
import '../../../src/utils/colors_utils.dart';
import '../components/app_bar.dart';
import '../components/call_nutri_widget.dart';
import 'food_items_widget.dart';
import 'revenues_food_store.dart';


final revenuesStore = RevenuesFoodStore();

class RevenuesFood extends StatefulWidget {
  const RevenuesFood({Key? key}) : super(key: key);

  @override
  State<RevenuesFood> createState() => _RevenuesFoodState();
}

class _RevenuesFoodState extends State<RevenuesFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.greenPrimary,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarRevenueWidget(
          title: 'Receitas Fit',
        ),
      ),
      body: revenueBody(),
    );
  }

  Widget revenueBody() {
    return SingleChildScrollView(
        child: Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40),
        ),
      ),
      child: Column(
        children: const [
          SizedBox(
            height: 28,
          ),
          RevenueFoodWidget(),
          const CallNutri(),
        ],
      ),
    ));
  }
}
