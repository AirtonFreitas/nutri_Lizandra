import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:realiza_nutri/src/utils/colors_utils.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../package_complete/items_package_completed_widget.dart';

class BodyChatWidget extends StatefulWidget {
  const BodyChatWidget({Key? key}) : super(key: key);

  @override
  State<BodyChatWidget> createState() => _BodyChatWidget();
}

class _BodyChatWidget extends State<BodyChatWidget> {
  late AdmobInterstitial interstitialAd;

  @override
  void initState() {
    super.initState();
    interstitialAd = AdmobInterstitial(
      adUnitId: 'ca-app-pub-3721429763641925/4231395337',
    );
    interstitialAd.load();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const Text(
          'Chat com a Nutri',
          style: TextStyle(fontFamily: 'GeosansLight', fontSize: 28),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 12,
        ),
        _bodyChat(),
        const SizedBox(
          height: 12,
        ),
        _redesSociais(),
        const SizedBox(
          height: 12,
        ),
        getBanner(AdmobBannerSize.BANNER),
      ]),
    ));
  }

  AdmobBanner getBanner(AdmobBannerSize size) {
    return AdmobBanner(
      adUnitId: 'ca-app-pub-3721429763641925/6928289982',
      adSize: size,
    );
  }

  void showInterstitial() {
    interstitialAd.show();
  }

  Widget _bodyChat() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Vamos conversar um pouco sobre nutrição?',
              style: TextStyle(fontFamily: 'GeosansLight',fontSize: 18),
            ),
            InkWell(
                onTap: _chamaZap,
                child: Icon(
                  Icons.chat,
                  color: ColorsUtils.greenSecondary,
                )),
          ],
        ),
        _modoPago(),
      ],
    );
  }

  Widget _redesSociais() {
    return Column(children: [
      const Text(
        'Siga para me conhecer melhor',
        style: TextStyle(fontSize: 16, fontFamily: 'GeosansLight'),
        textAlign: TextAlign.start,
      ),
      const SizedBox(
        height: 8,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        InkWell(
          onTap: () => _openInsta(),
          child: Image.asset(
            'assets/instagram.png',
            width: 50,
          ),
        ),
        InkWell(
          onTap: () => _chamaZap(),
          child: Image.asset(
            'assets/whats.png',
            width: 50,
          ),
        ),
        InkWell(
          onTap: () => _openLinkedin(),
          child: Image.asset(
            'assets/linkedin.png',
            width: 50,
          ),
        )
      ])
    ]);
  }

  Widget _modoPago() {
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
              'eu posso te ajudar a alcançar seu \nobjetivo nutricional',
              textAlign: TextAlign.center,
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

  Future<void> _openInsta() async {
    final Uri url = Uri.parse('https://www.instagram.com/nutri.lizandraluth/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _chamaZap() async {
    final Uri url = Uri.parse(
        'https://api.whatsapp.com/send?phone=5531987065718&text=Ol%C3%A1,%20gostaria%20de%20saber%20mais%20sobre%20o%20pacote%20completo%20do%20app%20nutricional.');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _openLinkedin() async {
    final Uri url = Uri.parse(
        'https://www.linkedin.com/in/lizandra-luth-cardoso-amorim-de-freitas-5b6028193/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }
}
