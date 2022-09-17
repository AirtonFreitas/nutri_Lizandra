import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../src/utils/colors_utils.dart';

class BodyProfileNutriWidget extends StatefulWidget {
  const BodyProfileNutriWidget({Key? key}) : super(key: key);

  @override
  State<BodyProfileNutriWidget> createState() => _BodyProfileNutriWidgetState();
}

class _BodyProfileNutriWidgetState extends State<BodyProfileNutriWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40),
              ),
            ),
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
                child: Column(children: [
                  const Text('Conhecendo a nutri',
                      style:
                          TextStyle(fontSize: 28, fontFamily: 'GeosansLight')),
                  const SizedBox(
                    height: 18,
                  ),
                  _redesSociais()
                ]))));
  }

  Widget _redesSociais() {
    return Column(children: [
      const Text(
        'Siga pra me conhecer melhor',
        style: TextStyle(fontSize: 16, fontFamily: 'GeosansLight'),
        textAlign: TextAlign.start,
      ),
      SizedBox(
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

  Future<void> _chamaZap() async {
    final Uri url = Uri.parse(
        'https://api.whatsapp.com/send?phone=5531987065718&text=Ol%C3%A1,%20gostaria%20de%20saber%20mais%20sobre%20o%20pacote%20completo%20do%20app%20nutricional.');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _openInsta() async {
    final Uri url = Uri.parse('https://www.instagram.com/nutri.lizandraluth/');
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
