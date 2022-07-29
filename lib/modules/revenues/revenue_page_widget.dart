import 'package:flutter/material.dart';
import 'package:realiza_nutri/modules/revenues/components/sweet_widget.dart';
import 'package:realiza_nutri/src/utils/colors_utils.dart';

import 'components/app_bar.dart';
import 'components/coffee_widget.dart';
import 'components/food_widget.dart';
import 'components/lunch_widget.dart';

class RevenueDetails extends StatefulWidget {
  const RevenueDetails({Key? key}) : super(key: key);

  @override
  State<RevenueDetails> createState() => _RevenueDetailsState();
}

class _RevenueDetailsState extends State<RevenueDetails> {
  int _bodySelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.greenPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarRevenueWidget(
          imageBar: 'pera',
          title: 'Receitas Fit',
        ),
      ),
      body: bodyDetails(),
    );
  }

  static const List<Widget> _widgetOptions = <Widget>[
    RevenuesCoffee(),
    RevenuesLunch(),
    RevenuesFood(),
    RevenuesSweet(),
  ];

  bodyDetails() {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: ColorsUtils.purplePrimary,
                        child: Icon(Icons.coffee_outlined,
                            size: 40, color: ColorsUtils.purpleSecondary),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Café',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      _bodySelected = 0;
                    });
                  },
                ),
                InkWell(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: ColorsUtils.bluePrimary,
                        child: Icon(Icons.lunch_dining_rounded,
                            size: 40, color: ColorsUtils.blueSecondary),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Lanches',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      _bodySelected = 1;
                    });
                  },
                ),
                InkWell(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: ColorsUtils.redPrimary,
                        child: Icon(Icons.dinner_dining_outlined,
                            size: 40, color: ColorsUtils.redSecondary),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Refeições',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      _bodySelected = 2;
                    });
                  },
                ),
                InkWell(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: ColorsUtils.yellowPrimary,
                        child: Icon(Icons.cookie_outlined,
                            size: 40, color: ColorsUtils.yellowSecondary),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Doces',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      _bodySelected = 3;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 12),
            //_widgetScreenRevenue(),
            _widgetOptions.elementAt(_bodySelected),
            _modoPago(),
          ],
        ),
      ),
    );
  }

  _modoPago() {
    return Container(
      padding: EdgeInsets.all(50),
      child: Text('MAIS OPÇÕES NO MODO PAGO\n'
          'EXIBIR MENU DE MODO PAGO AQUI'),);
  }
}
