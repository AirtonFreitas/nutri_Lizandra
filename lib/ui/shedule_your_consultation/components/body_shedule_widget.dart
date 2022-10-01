import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../src/utils/colors_utils.dart';
import '../../package_complete/items_package_completed_widget.dart';
import '../shedule_your_consultation_store.dart';

final sheduleConsultationStore = SheduleConsultationStore();

class BodySheduleWidget extends StatefulWidget {
  const BodySheduleWidget({Key? key}) : super(key: key);

  @override
  State<BodySheduleWidget> createState() => _BodySheduleWidgetState();
}

class _BodySheduleWidgetState extends State<BodySheduleWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
              child: Column(
                children: [
                  const Text(
                    'Vamos marcar uma \nconsulta experimental grátis?',
                    style: TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(width: 300,height: 300,
                    child: CalendarDatePicker(
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime.parse('2022-12-01'),
                        onDateChanged: (d) async {
                          String day = d.day.toString();
                          String month = d.month.toString();
                          String year = d.year.toString();
                          await sheduleConsultationStore
                              .setDate('$day/$month/$year');
                          ;
                        }),
                  ),
                  TextButton(onPressed: _chamaZap, child: const Text('Agendar')),
                  _callNutri()
                ],
              ),
            )));
  }

  Future<void> _chamaZap() async {
    final Uri url = Uri.parse(
        'https://api.whatsapp.com/send?phone=5531987065718&text=Oii%20Nutri,%20gostaria%20de%20marcar%20uma%20consulta%20experimental%20gr%C3%A1tis.%20O%20dia%20que%20eu%20esccolhi%20foi%20${sheduleConsultationStore.date}%20.%20Podemos%20marcar%20?');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
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
}
