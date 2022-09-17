import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:realiza_nutri/src/utils/colors_utils.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../package_complete/items_package_completed_widget.dart';
import '../home_store.dart';

final homeStore = HomeStore();

class BodyHomeWidget extends StatefulWidget {
  const BodyHomeWidget({Key? key}) : super(key: key);

  @override
  State<BodyHomeWidget> createState() => _BodyHomeWidgetState();
}

class _BodyHomeWidgetState extends State<BodyHomeWidget> {
  @override
  Widget build(BuildContext context) {
    homeStore.checkRegistery();
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Observer(builder: (BuildContext context) {
                return Text(
                  'Olá, ${homeStore.name.split(' ')[0]}',
                  style:
                      const TextStyle(fontFamily: 'GeosansLight', fontSize: 28),
                );
              }),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  _bannerHome(
                      'Principais erros',
                      Icon(Icons.error_outline,
                          size: 40, color: ColorsUtils.red),
                      () => Navigator.pushNamed(context, 'main-errors')),
                  const SizedBox(
                    width: 12,
                  ),
                  _bannerHome(
                      'Hábitos \nSaudáveis',
                      Icon(Icons.check, size: 40, color: ColorsUtils.blue),
                      () => Navigator.pushNamed(context, 'healthy-habits')),
                  const SizedBox(
                    width: 12,
                  ),
                  _bannerHome(
                      'Conheça a Nutri',
                      Icon(Icons.face, size: 40, color: ColorsUtils.green),
                      () => Navigator.pushNamed(context, 'profile_nutri')),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              _firstBanner(),
              const SizedBox(
                height: 18,
              ),
              _nutricaoComportamental(),
              const SizedBox(
                height: 18,
              ),
              CarouselSlider(items: [
                _caruoselBanner(
                  'Efeito',
                  'sanfona',
                  Image.asset('assets/accordion.png',
                      width: 40, color: ColorsUtils.orange),
                ),
                _caruoselBanner(
                  'Retenção de',
                  'líquidos',
                  Icon(Icons.water_drop_outlined,
                      size: 32, color: ColorsUtils.blue),
                ),
                _caruoselBanner(
                  'Abandonei a',
                  'meta',
                  Icon(Icons.auto_graph_outlined,
                      size: 32, color: ColorsUtils.green),
                ),
              ], options: CarouselOptions(autoPlay: true,height: 94,
              )),
              _modoPago(),
            ],
          )),

    );
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
              'eu posso te ajudar a alcançar isso',
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
            const Text('Vamos parar de uma vez com',style: TextStyle(
                fontFamily: 'GeosansLight',
                fontSize: 20,
                ),),
            const SizedBox(
              height: 12,
            ),
            ItemsPakageCompleted(
                check: false, nameItem: 'Não consigo seguir o plano alimentar'),
            ItemsPakageCompleted(
                check: false, nameItem: 'Comi de nervoso'),
            ItemsPakageCompleted(
                check: false, nameItem: 'Vou fazer jejum'),
            ItemsPakageCompleted(
                check: false, nameItem: 'Efeito sanfona'),
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
    final Uri url = Uri.parse(
        'https://api.whatsapp.com/send?phone=5531987065718&text=Ol%C3%A1,%20gostaria%20de%20saber%20mais%20sobre%20o%20pacote%20completo%20do%20app%20nutricional.');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }
  Widget _nutricaoComportamental(){
    return Column(children: const [
Text('Apesar da grande quantidade de informações sobre alimentos e dietas, as pessoas continuam enxergando a comida como grande inimiga. A nutrição comportamental tem como objetivo mudar essa relação, fazendo com que as pessoas sintam prazer (e não culpa) ao comer.',
style:
        TextStyle(fontSize: 18, fontFamily: 'GeosansLight')
),
    ],);
  }

  Widget _firstBanner() {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: ColorsUtils.greenPrimary,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 12, left: 32, right: 32, bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.lightbulb_outlined,
                  size: 40, color: ColorsUtils.orange),
              Column(
                children: const [
                  Text('O que é Nutrição',
                      style:
                          TextStyle(fontSize: 18, fontFamily: 'GeosansLight')),
                  Text('comportamental',
                      style:
                          TextStyle(fontSize: 32, fontFamily: 'GeosansLight')),
                ],
              ),
              Icon(Icons.question_mark_rounded,
                  size: 32, color: ColorsUtils.green),

            ],
          ),
        ));
  }

  Widget _caruoselBanner(String lineOne, String lineTwo, img) {
    return Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: ColorsUtils.green, width: 2),
          borderRadius: BorderRadius.circular(16),
        ),
        color: ColorsUtils.white,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 12, left: 24, right: 24, bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  Text(lineOne,
                      style: const TextStyle(
                          fontSize: 18, fontFamily: 'GeosansLight')),
                  Text(lineTwo,
                      style: const TextStyle(
                          fontSize: 32, fontFamily: 'GeosansLight')),
                ],
              ),
              const SizedBox(
                width: 12,
              ),
              img
            ],
          ),
        ));
  }

  Widget _bannerHome(String title, icon, Function() goPage) {
    return InkWell(
        onTap: () {
          goPage();
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: ColorsUtils.greenPrimary, width: 2),
          ),
          child: SizedBox(
            width: 100,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontFamily: 'GeosansLight'),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 4,
                ),
                icon,
              ],
            ),
          ),
        ));
  }
}
