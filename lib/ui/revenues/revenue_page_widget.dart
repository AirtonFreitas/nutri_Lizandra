import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:realiza_nutri/src/utils/colors_utils.dart';
import 'package:url_launcher/url_launcher.dart';
import '../package_complete/items_package_completed_widget.dart';
import 'components/app_bar.dart';
import 'components/call_nutri_widget.dart';

class RevenueDetails extends StatefulWidget {
  const RevenueDetails({Key? key}) : super(key: key);

  @override
  State<RevenueDetails> createState() => _RevenueDetailsState();
}

class _RevenueDetailsState extends State<RevenueDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarRevenueWidget(
          title: 'Receitas Fit',
        ),
      ),
      backgroundColor: ColorsUtils.greenPrimary,
      body: bodyDetails(),
    );
  }

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
            const SizedBox(height: 12),
            const Text(
              'Receitas saudáveis',
              style: TextStyle(fontSize: 28, fontFamily: 'GeosansLight'),
            ),
            const SizedBox(height: 12),
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
                      const SizedBox(height: 4),
                      const Text(
                        'Café',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'revenues-coffee');
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
                      const SizedBox(height: 4),
                      const Text(
                        'Lanches',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'revenues-lunch');
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
                      const SizedBox(height: 4),
                      const Text(
                        'Refeições',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'revenues-food');
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
                      const SizedBox(height: 4),
                      const Text(
                        'Doces',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'revenues-sweet');
                  },
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Muitas pessoas acham que toda receita saudável é complexa, espero mudar essa visão com as receitas do app.\n'
                'São receitas fáceis e com ingredientes acessíveis.\n'
                'O objetivo principal dessas receitas, é te aproximar de alimentos que te fazem bem.',textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontFamily: 'GeosansLight'),
              ),
            ),
            const SizedBox(height: 12),
            const CallNutri(),
            getBanner(AdmobBannerSize.BANNER),
          ],
        ),
      ),
    );
  }

  AdmobBanner getBanner(AdmobBannerSize size) {
    return AdmobBanner(
      adUnitId: 'ca-app-pub-3721429763641925/4919104120',
      adSize: size,
    );
  }
}
