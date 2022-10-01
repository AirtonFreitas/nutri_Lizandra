import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../src/utils/colors_utils.dart';
import 'revenues_lunch_store.dart';

final revenuesStore = RevenuesLunchStore();

class RevenueLunchWidget extends StatefulWidget {
  const RevenueLunchWidget({Key? key}) : super(key: key);

  @override
  State<RevenueLunchWidget> createState() => _RevenueLunchWidget();
}

class _RevenueLunchWidget extends State<RevenueLunchWidget> {
  bool _ingredientesActive = true;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (BuildContext context) {
      return Column(
        children: [
          const Text(
            'Receitas de Lanches',
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'GeosansLight',
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {
                    revenuesStore.setRevenue(0);
                  },
                  child: Column(
                    children: const [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage('assets/revenues/cookies_amendoim.jpg'),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Cookies \n de amendoim',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'GeosansLight',
                        ),
                      )
                    ],
                  )),
              InkWell(
                  onTap: () {
                    revenuesStore.setRevenue(1);
                  },
                  child: Column(
                    children: const [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage('assets/revenues/coxinha.jpg'),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Coxinha\n saudável',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'GeosansLight',
                        ),
                      )
                    ],
                  )),
              InkWell(
                  onTap: () {
                    revenuesStore.setRevenue(2);
                  },
                  child: Column(
                    children: const [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage('assets/revenues/crepioca.jpg'),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Crepioca \n recheada',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'GeosansLight',
                        ),
                      )
                    ],
                  )),
              InkWell(
                  onTap: () {
                    revenuesStore.setRevenue(3);
                  },
                  child: Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 40,
                        child: Icon(
                          Icons.add,
                          size: 48,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Ver \n mais',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'GeosansLight',
                        ),
                      )
                    ],
                  )),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          revenuesStore.bodyRevenueSelected == 0
              ? revenues(
                  titleRevenue: 'Cookies de amendoim',
                  image: 'assets/revenues/cookies_amendoim.jpg',
                  time: '15min',
                  qtdIngredients: '4 itens',
                  level: 'médio',
                  modoPreparo: '1. Pré-aqueça o forno a 180 °C.\n'
                      '2. Misture todos os ingredientes com um garfo \naté que fique homogêneo.\n'
                      '3. Coloque em uma forma antiaderente a massa \nem forma de pequenas bolas (1 colher de sopa cheia\n para cada bola).\n'
                      '4. Asse por 10 a 12 minutos, até que comece a ficar dourado.',
                  ingredients: '• Ovo (1 unidade)\n'
                      '• Pasta de Amendoim (1/3 de xícara)\n'
                      '• Banana (1 unidade)\n'
                      '• Canela em pó (1 colher de chá)')
              : const SizedBox.shrink(),
          revenuesStore.bodyRevenueSelected == 1
              ? revenues(
                  titleRevenue: 'Coxinha',
                  image: 'assets/revenues/coxinha.jpg',
                  time: '45',
                  qtdIngredients: '3 itens',
                  level: 'difícil',
                  modoPreparo: '1. Cozinhe a batata até ficar bem macia\n'
                      '2. Coloque na geladeira para esfriar. Depois \nde fria, modele as coxinhas\n'
                      '3. Coloque o frango desfiado como recheio'
                      '4. Passe as coxinhas na farinha de linhaça dourada\n ou na farinha de Aveia\n'
                      'obs.na farinha de aveia vai ficar mais clarinha, ok?',
                  ingredients: '• Batata doce (330g)\n'
                      '• Frango desfiado (50g)\n'
                      '• Farinha de linhaça (para empanar)')
              : const SizedBox.shrink(),
          revenuesStore.bodyRevenueSelected == 2
              ? revenues(
                  titleRevenue: 'Crepioca recheada',
                  image: 'assets/revenues/crepioca.jpg',
                  time: '20min',
                  qtdIngredients: '6 itens',
                  level: 'difícil',
                  modoPreparo: 'Faça a tapioca na frigideira com os ovos\n'
                      'Adicione o recheio após a tapioca pronta',
                  ingredients: '• Ovo (3 unidades)\n'
                      '• Tapioca goma (1 e ½ colher de sopa)\n'
                      '• Alho poró (10 rodelas (60 g))\n'
                      '• Beterraba coziada ralada (2 fatias)\n'
                      '• Tomate picado(2 rodelas)\n'
                      '• Pistache torrado(opcional)')
              : const SizedBox.shrink(),
          revenuesStore.bodyRevenueSelected == 3
              ? const Padding(padding: EdgeInsets.all(18),child: Text('Você ainda não tem acesso ao pacote completo. '
              'Entre em contato comigo que eu te explico sobre o pacote completo.',
            style: TextStyle(fontFamily: 'GeosansLight', fontSize: 28),textAlign: TextAlign.center,),)
              : const SizedBox.shrink(),
        ],
      );
    });
  }

  Widget revenues({
    required titleRevenue,
    required image,
    required time,
    required qtdIngredients,
    required level,
    required modoPreparo,
    required ingredients,
  }) {
    return Observer(builder: (BuildContext context) {
      return Column(
        children: [
          Stack(
            children: [
              Image(image: AssetImage(image)),
              Positioned(
                top: 20,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: ColorsUtils.darkSecondary,
                  child: Text(
                    titleRevenue,
                    style: TextStyle(
                        color: ColorsUtils.white,
                        fontSize: 30,
                        fontFamily: 'GeosansLight',
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.timer_sharp,
                    size: 22,
                    color: ColorsUtils.blueSecondary,
                  ),
                  Text(time),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.list_alt_sharp,
                    size: 22,
                    color: ColorsUtils.blueSecondary,
                  ),
                  Text(qtdIngredients),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.leaderboard_outlined,
                    size: 22,
                    color: ColorsUtils.blueSecondary,
                  ),
                  Text(level),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _ingredientesActive = true;
                  });
                },
                child: Container(
                  color: _ingredientesActive
                      ? ColorsUtils.bluePrimary
                      : ColorsUtils.blueGray,
                  width: MediaQuery.of(context).size.width / 2,
                  height: 48,
                  alignment: Alignment.center,
                  child: Text('Ingredientes'.toUpperCase()),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _ingredientesActive = false;
                  });
                },
                child: Container(
                  color: _ingredientesActive
                      ? ColorsUtils.blueGray
                      : ColorsUtils.bluePrimary,
                  width: MediaQuery.of(context).size.width / 2,
                  height: 48,
                  alignment: Alignment.center,
                  child: Text('Preparo'.toUpperCase()),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            child: _ingredientesActive
                ? Padding(
                    padding: const EdgeInsets.all(2),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 12,
                        ),
                        Text(ingredients,
                            style: const TextStyle(fontFamily: 'GeosansLight'))
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const Text(
                          'Modo de Preparo',
                          style: TextStyle(
                            fontFamily: 'GeosansLight',
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              modoPreparo,
                              style:
                                  const TextStyle(fontFamily: 'GeosansLight'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      );
    });
  }
}
