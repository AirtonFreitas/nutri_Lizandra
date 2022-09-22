import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:realiza_nutri/src/utils/colors_utils.dart';
import 'package:url_launcher/url_launcher.dart';
import '../package_complete/items_package_completed_widget.dart';
import 'components/app_bar.dart';
import 'components/coffee_widget.dart';
import 'components/food_widget.dart';
import 'components/lunch_widget.dart';
import 'components/sweet_widget.dart';

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
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarRevenueWidget(
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
                      const SizedBox(height: 4),
                      const Text(
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
                      const SizedBox(height: 4),
                      const Text(
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
                      const SizedBox(height: 4),
                      const Text(
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
            const SizedBox(height: 12),
            //_widgetScreenRevenue(),
            _widgetOptions.elementAt(_bodySelected),
            _callNutri(),
            getBanner(AdmobBannerSize.BANNER),
          ],
        ),
      ),
    );
  }

  Widget _callNutri() {
    return Column(
      children: [
        const SizedBox(
          height: 18,
        ),
        _linhaHorizontal(),
        const SizedBox(
          height: 28,
        ),
        const Text(
          'Chama a nutri',
          style: TextStyle(fontSize: 22, fontFamily: 'GeosansLight'),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'sua saúde, está em suas mãos',
          style: TextStyle(
            fontFamily: 'GeosansLight',
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: _chamaZap,
                  child: const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/foto_nutri.png'),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: InkWell(
                    onTap: _chamaZap,
                    child: const CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage('assets/icon_zap.png'),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'eu posso te ajudar a alcançar seu \nobjetivo nutricional',textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'GeosansLight',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ItemsPakageCompleted(
                check: true, nameItem: 'Mais de 100 receitas saudáveis'),
            ItemsPakageCompleted(
                check: true, nameItem: 'Acompanhamento Nutricional'),
            ItemsPakageCompleted(
                check: true, nameItem: 'Chat direto com a Nutri'),
            ItemsPakageCompleted(check: true, nameItem: 'Dicas Nutricionais'),
            ItemsPakageCompleted(
                check: true, nameItem: 'Desafio de emagrecimento'),
            ItemsPakageCompleted(
                check: true, nameItem: 'Aprenda a ler rótulo dos alimentos'),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Vamos parar de uma vez com',
              style: TextStyle(
                fontFamily: 'GeosansLight',
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ItemsPakageCompleted(
                check: false, nameItem: 'Não consigo seguir o plano alimentar'),
            ItemsPakageCompleted(check: false, nameItem: 'Comi de nervoso'),
            ItemsPakageCompleted(check: false, nameItem: 'Vou fazer jejum'),
            ItemsPakageCompleted(check: false, nameItem: 'Efeito sanfona'),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
  Widget _linhaHorizontal() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 0.5,
      color: ColorsUtils.gray,
    );
  }

  Future<void> _chamaZap() async {
    final Uri _url = Uri.parse(
        'https://api.whatsapp.com/send?phone=5531987065718&text=Ol%C3%A1,%20gostaria%20de%20saber%20mais%20sobre%20o%20pacote%20completo%20do%20app%20nutricional.');
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_url';
    }
  }

  AdmobBanner getBanner(AdmobBannerSize size) {
    return AdmobBanner(
      adUnitId: 'ca-app-pub-3721429763641925/4919104120',
      adSize: size,
    );
  }
}
