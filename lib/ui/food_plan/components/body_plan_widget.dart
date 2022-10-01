import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../src/utils/colors_utils.dart';
import '../../package_complete/items_package_completed_widget.dart';

class BodyPlanWidget extends StatefulWidget {
  const BodyPlanWidget({Key? key}) : super(key: key);

  @override
  State<BodyPlanWidget> createState() => _BodyPlanWidget();
}

class _BodyPlanWidget extends State<BodyPlanWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Padding(padding: const EdgeInsets.only(top: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const Text(
          'Plano Alimentar',
          style: TextStyle(fontFamily: 'GeosansLight', fontSize: 28),
          textAlign: TextAlign.center,
        ),const SizedBox(height: 12,),
        const Text(
          'Você ainda não tem um \nplano alimentar personalizado',
          style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
          textAlign: TextAlign.center,
        ),
        _callNutri(),
      ]),
    ),);
  }
  Widget _linhaHorizontal() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 0.5,
      color: ColorsUtils.gray,
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
          'Sua saúde está em suas mãos',
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
              'eu posso te ajudar a alcançar seu \nObjetivo Nutricional',
              style: TextStyle(
                  fontFamily: 'GeosansLight',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),textAlign: TextAlign.center,
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

  Future<void> _chamaZap() async {
    final Uri url = Uri.parse(
        'https://api.whatsapp.com/send?phone=5531987065718&text=Ol%C3%A1,%20gostaria%20de%20saber%20mais%20sobre%20o%20pacote%20completo%20do%20app%20nutricional.');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }
}
