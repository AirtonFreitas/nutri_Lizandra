import 'package:flutter/material.dart';
import '../../../src/utils/colors_utils.dart';
import '../components/app_bar.dart';
import '../components/call_nutri_widget.dart';
import 'revenues_sweet_store.dart';
import 'sweet_items_widget.dart';

final revenuesStore = RevenuesSweetStore();

class RevenuesSweet extends StatefulWidget {
  const RevenuesSweet({Key? key}) : super(key: key);

  @override
  State<RevenuesSweet> createState() => _RevenuesSweetState();
}

class _RevenuesSweetState extends State<RevenuesSweet> {
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
          RevenueSweetWidget(),
          const CallNutri(),
        ],
      ),
    ));
  }
}
