import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';

class BodyErrosMainWidget extends StatefulWidget {
  const BodyErrosMainWidget({Key? key}) : super(key: key);

  @override
  State<BodyErrosMainWidget> createState() => _BodyErrosMainWidgetState();
}

class _BodyErrosMainWidgetState extends State<BodyErrosMainWidget> {
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
                  const Text('Principais erros',
                      style:
                          TextStyle(fontSize: 28, fontFamily: 'GeosansLight')),
                  const SizedBox(
                    height: 18,
                  ),
                  _bodyOne(),
                  const Text(
                    'A dieta restritiva é aquela que incentiva o indivíduo a deixar de consumir algum macronutriente, os componentes da alimentação que são fundamentais para o corpo humano, como proteínas, carboidratos e gorduras. A famosa “dieta lowcarb” é um exemplo, cujo protocolo é reduzir drasticamente ou praticamente zerar o consumo de carboidratos.\n'
                    'Toda dieta precisa de acompanhamento de um profissional.\n'
                    'Vou listar apenas alguns dos perigos de uma dieta restritiva:\n'
                    '• Queda de cabelo;\n• Fadiga;\n• Nervosismo;\n• Dificuldade de concentração;\n• Pele seca;\n• Unhas fracas;\n• Flacidez;\n• Tontura, entre outros.\n'
                    'De acordo com o Ministério da Saúde, aproximadamente 75% dos indivíduos que as adotam retornam ao peso anterior. Isso ocorre pois esse tipo de alimentação não costuma promover a reeducação alimentar e a adoção de outros hábitos saudáveis, essenciais para manter um peso adequado.',
                    style: TextStyle(fontFamily: 'GeosansLight'),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  _bodyTwo(),
                  const Text(
                    'Ficar muito tempo sem se alimentar pode reduzir o metabolismo corporal.\n'
                    'Mas, comer com frequencia, só vai fazer você perder peso se o seu gasto calórico for maior do que o consumo de calorias. Dessa forma, você precisará fazer uma dieta que seja compatível com seu gasto calórico diário. Ou seja, é preciso haver um equilíbrio entre o consumo de calorias e a queima delas.',
                    style: TextStyle(fontFamily: 'GeosansLight'),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  _bodyThree(),
                  const Text(
                    'Uma alimentação balanceada, ao contrário do que alguns podem pensar, não é um sinônimo de sofrimento. \nPara emagrecer não é preciso renunciar aos prazeres do paladar. Mas é necessário um pouco de criatividade e boa vontade na cozinha. Além de um conhecimento básico sobre os alimentos que podem auxiliar na busca por um corpo mais estético e saudável.',
                    style: TextStyle(fontFamily: 'GeosansLight'),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  _bodyFour(),
                  const Text(
                    'O exercício físico, principalmente aeróbico, aumenta a capacidade cardiorrespiratória e acelera o metabolismo, elevando o gasto energético – o que é popularmente conhecido como “queimar calorias” –, estimulando o emagrecimento.',
                    style: TextStyle(fontFamily: 'GeosansLight'),
                  ),
                  getBanner(AdmobBannerSize.BANNER),
                ],
              ),
            )));
  }

  Widget _bodyOne() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          'assets/erro_one.png',
          width: 150,
        ),
        const Text(
          'Dietas Restritivas',
          style: TextStyle(fontSize: 22, fontFamily: 'GeosansLight'),
        ),
      ],
    );
  }

  Widget _bodyTwo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Ficar muito tempo \nsem se alimentar',
          style: TextStyle(fontSize: 22, fontFamily: 'GeosansLight'),
        ),
        Image.asset(
          'assets/erro_two.png',
          width: 150,
        ),
      ],
    );
  }

  Widget _bodyThree() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          'assets/erro_three.png',
          width: 150,
        ),
        const Text(
          'Pensar que a comida \né o vilão',
          style: TextStyle(fontSize: 22, fontFamily: 'GeosansLight'),
        ),
      ],
    );
  }

  Widget _bodyFour() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Não praticar \natividade Física',
          style: TextStyle(fontSize: 22, fontFamily: 'GeosansLight'),
        ),
        Image.asset(
          'assets/erro_four.png',
          width: 150,
        ),
      ],
    );
  }

  AdmobBanner getBanner(AdmobBannerSize size) {
    return AdmobBanner(
      adUnitId: 'ca-app-pub-3721429763641925/2724772350',
      adSize: size,
    );
  }
}
