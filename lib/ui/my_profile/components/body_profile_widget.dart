import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../src/utils/colors_utils.dart';
import '../../package_complete/items_package_completed_widget.dart';
import '../my_profile_store.dart';

final profileStore = MyProfileStore();

class BodyProfileWidget extends StatefulWidget {
  const BodyProfileWidget({Key? key}) : super(key: key);

  @override
  State<BodyProfileWidget> createState() => _BodyProfileWidgetState();
}

class _BodyProfileWidgetState extends State<BodyProfileWidget> {
  @override
  Widget build(BuildContext context) {
    profileStore.checkRegistery();
    return Observer(builder: (BuildContext context) {
      return profileStore.loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              padding: const EdgeInsets.all(12),
              child: Column(children: [
                const Text(
                  'Meu perfil',
                  style: TextStyle(fontSize: 28, fontFamily: 'GeosansLight'),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Image.asset(
                    'assets/${profileStore.genre}.png',
                    width: 128,
                  ),
                  Observer(builder: (BuildContext context) {
                    return Text(
                      '${profileStore.name?.split(' ').first}',
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                          fontFamily: 'GeosansLight', fontSize: 32),
                    );
                  }),
                ]),
                const SizedBox(
                  height: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Observer(builder: (BuildContext context) {
                      return Text.rich(TextSpan(
                          text: 'Idade: ',
                          style: const TextStyle(
                              fontFamily: 'GeosansLight', fontSize: 18),
                          children: <TextSpan>[
                            TextSpan(
                                text: '${profileStore.age}',
                                style: const TextStyle(
                                    fontSize: 22, fontFamily: 'GeosansLight')),
                          ]));
                    }),
                    Observer(builder: (BuildContext context) {
                      return Text.rich(TextSpan(
                          text: 'Peso: ',
                          style: const TextStyle(
                              fontFamily: 'GeosansLight', fontSize: 18),
                          children: <TextSpan>[
                            TextSpan(
                                text: '${profileStore.weight}',
                                style: const TextStyle(
                                    fontSize: 22, fontFamily: 'GeosansLight')),
                          ]));
                    }),
                    Observer(builder: (BuildContext context) {
                      return Text.rich(TextSpan(
                          text: 'Altura: ',
                          style: const TextStyle(
                              fontFamily: 'GeosansLight', fontSize: 18),
                          children: <TextSpan>[
                            TextSpan(
                                text: '${profileStore.height}',
                                style: const TextStyle(
                                    fontSize: 22, fontFamily: 'GeosansLight')),
                          ]));
                    }),
                    Observer(builder: (BuildContext context) {
                      return Text.rich(TextSpan(
                          text: 'Objetivo Nutricional: ',
                          style: const TextStyle(
                              fontFamily: 'GeosansLight', fontSize: 18),
                          children: <TextSpan>[
                            TextSpan(
                                text: '${profileStore.nutritionalGoal}',
                                style: const TextStyle(
                                    fontSize: 22, fontFamily: 'GeosansLight')),
                          ]));
                    }),
                    Observer(builder: (BuildContext context) {
                      return Text.rich(TextSpan(
                          text: 'Nível de Atividades Físicas: ',
                          style: const TextStyle(
                              fontFamily: 'GeosansLight', fontSize: 18),
                          children: <TextSpan>[
                            TextSpan(
                                text: '${profileStore.sliderAtividade}',
                                style: const TextStyle(
                                    fontSize: 22, fontFamily: 'GeosansLight')),
                          ]));
                    }),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'edit-profile');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'editar perfil',
                        style: TextStyle(
                            fontFamily: 'GeosansLight',
                            color: Colors.lightBlue),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.edit, size: 14, color: Colors.lightBlue),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                _linhaHorizontal(),
                const SizedBox(
                  height: 28,
                ),
                Observer(builder: (BuildContext context) {
                  return Text.rich(
                    TextSpan(
                        text: 'Seu IMC é ',
                        style: const TextStyle(
                            fontFamily: 'GeosansLight', fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                              text: profileStore.imc!.toStringAsFixed(2),
                              style: const TextStyle(
                                  fontSize: 28, fontFamily: 'GeosansLight')),
                        ]),
                  );
                }),
                InkWell(
                  onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('O que é IMC?',style: TextStyle(fontFamily: 'GeosansLight',fontWeight: FontWeight.bold)),
                      content: const Text(
                          'IMC é um cálculo simples que permite medir se alguém está ou não com o peso ideal. Ele aponta se o peso está adequado ou se está abaixo ou acima do peso.',
                          style: TextStyle(fontFamily: 'GeosansLight')),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'o que é IMC',
                        style: TextStyle(
                            fontFamily: 'GeosansLight',
                            color: Colors.lightBlue),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(Icons.question_mark_rounded,
                          size: 14, color: Colors.lightBlue),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                Observer(builder: (BuildContext context) {
                  return profileStore.imc! < 18.5
                      ? _imcBaixo()
                      : const SizedBox.shrink();
                }),
                Observer(builder: (BuildContext context) {
                  return profileStore.imc! > 18.5 && profileStore.imc! < 24.9
                      ? _imcNormal()
                      : const SizedBox.shrink();
                }),
                Observer(builder: (BuildContext context) {
                  return profileStore.imc! > 25 && profileStore.imc! < 29.9
                      ? _imcSobrepeso()
                      : const SizedBox.shrink();
                }),
                Observer(builder: (BuildContext context) {
                  return profileStore.imc! > 30 && profileStore.imc! < 39.9
                      ? _imcObesidade()
                      : const SizedBox.shrink();
                }),
                Observer(builder: (BuildContext context) {
                  return profileStore.imc! > 40
                      ? _imcObesidadeGrave()
                      : const SizedBox.shrink();
                }),
              ]),
            );
    });
  }

  Widget _imcBaixo() {
    return Column(
      children: [
        const Text.rich(TextSpan(
            text: 'De acordo com a OMS, seu peso está ',
            style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
            children: <TextSpan>[
              TextSpan(
                  text: 'abaixo do ideal.',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'GeosansLight',
                      fontWeight: FontWeight.bold)),
            ])),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Precisamos corrigir isso.',
          style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Será que o correto seria comer tudo que vejo pela frente?',
          style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'NÃO',
          style: TextStyle(fontSize: 22),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Até pra ganhar peso, tem a forma certa e saúdável.',
          style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
        ),
        _nutriComportamental(),
        _modoPago(),
      ],
    );
  }

  Widget _imcNormal() {
    return Column(
      children: [
        const Text.rich(TextSpan(
            text: 'Parabéns, de acordo com a OMS, você está em seu ',
            style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
            children: <TextSpan>[
              TextSpan(
                  text: 'Peso Ideal.',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'GeosansLight',
                      fontWeight: FontWeight.bold)),
              TextSpan(
                text:
                    '\nAgora precisamos manter esse peso e principalmente, nos alimentar bem. ',
                style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
              ),
              TextSpan(
                text:
                    '\nMesmo que esteja próximo ao peso ideal, uma alimentação saudável trás inúmeros benefícios para nossa saúde.',
                style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
              ),
            ])),
        _nutriComportamental(),
        _modoPago(),
      ],
    );
  }

  Widget _imcSobrepeso() {
    return Column(
      children: [
        const Text.rich(TextSpan(
            text: 'De acordo com a OMS, seu IMC é cclassificado como ',
            style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
            children: <TextSpan>[
              TextSpan(
                  text: 'sobrepeso.',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'GeosansLight',
                      fontWeight: FontWeight.bold)),
            ])),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'As vezes pode ser muito difícil perder peso',
          style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'E nem sempre, quer dizer que você come MUITO',
          style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
        ),
        const SizedBox(
          height: 8,
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Isso pode acontecer porque você come ERRADO',
          style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
        ),
        _nutriComportamental(),
        _modoPago(),
      ],
    );
  }

  Widget _imcObesidade() {
    return Column(
      children: [
        const Text.rich(TextSpan(
            text: 'De acordo com a OMS, seu IMC é classificado como ',
            style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
            children: <TextSpan>[
              TextSpan(
                  text: 'obesidade.',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'GeosansLight',
                      fontWeight: FontWeight.bold)),
            ])),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'As vezes pode ser muito difícil perder peso.',
          style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Mas com o acompanhamento certo, você pode perder peso de forma saudável.',
          style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
        ),
        const SizedBox(
          height: 8,
        ),
        const SizedBox(
          height: 8,
        ),
        _nutriComportamental(),
        _modoPago(),
      ],
    );
  }

  Widget _imcObesidadeGrave() {
    return Column(
      children: [
        const Text.rich(TextSpan(
            text: 'De acordo com a OMS, seu IMC é cclassificado como ',
            style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
            children: <TextSpan>[
              TextSpan(
                  text: 'obesidade grave.',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'GeosansLight',
                      fontWeight: FontWeight.bold)),
            ])),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'As vezes pode ser muito difícil perder peso',
          style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Mas com o acompanhamento certo, você pode perder peso de forma saudável',
          style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
        ),
        const SizedBox(
          height: 8,
        ),
        const SizedBox(
          height: 8,
        ),
        _nutriComportamental(),
        _modoPago(),
      ],
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
          ],
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }

  Widget _nutriComportamental() {
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
          'Você vai conhecer a nutrição comportamental',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28, fontFamily: 'GeosansLight'),
        ),
        const SizedBox(
          height: 8,
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
}
