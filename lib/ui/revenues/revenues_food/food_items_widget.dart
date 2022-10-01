import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../src/utils/colors_utils.dart';
import 'revenues_food_store.dart';

final revenuesStore = RevenuesFoodStore();

class RevenueFoodWidget extends StatefulWidget {
  const RevenueFoodWidget({Key? key}) : super(key: key);

  @override
  State<RevenueFoodWidget> createState() => _RevenueFoodWidget();
}

class _RevenueFoodWidget extends State<RevenueFoodWidget> {
  bool _ingredientesActive = true;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (BuildContext context) {
      return Column(
        children: [
          const Text('Receitas de Refeições',style: TextStyle(fontSize: 28,fontFamily: 'GeosansLight',),),
          const SizedBox(height: 16,),
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
                        AssetImage('assets/revenues/tomate_ricota.jpg'),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Tomate \n com ricota',
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
                        AssetImage('assets/revenues/pizza_frango.jpg'),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Pizza \n de Frango',
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
                        AssetImage('assets/revenues/escondidinho_batata_doce.jpg'),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Escondidinho de \nbatata doce',
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
                  titleRevenue: 'Tomate com Ricota',
                  image: 'assets/revenues/tomate_ricota.jpg',
                  time: '45min',
                  qtdIngredients: '7 itens',
                  level: 'difícil',
                  modoPreparo: '1. Retire a tampa e a polpa dos tomates, \ndeixando apenas a parte externa;\n'
                      '2. Reserve a polpa para fazer molho de tomate natural;\n'
                      '3. Misture os queijos, temperos e azeites em uma vasilha;\n'
                      '4. Complete o interior dos tomates com a pasta;\n'
                      '5. Leve ao forno a 200 °C durante 30 a 35 minutos.',
                  ingredients: '• Ricota fresca (1 unidade)\n'
                      '• Queijo parmesão ralado (100g)\n'
                      '• Tomate (7 unidades)\n'
                      '• Cebola pequena (1 unidade)\n'
                      '• Orégano, sal e pimenta (à gosto)\n'
                      '• Manjericão e cheio verde (à gosto)\n'
                      '• Azeide te oliva extravirgem (3 colheres de sopa)'
                      )
              : const SizedBox.shrink(),
          revenuesStore.bodyRevenueSelected == 1
              ? revenues(
                  titleRevenue: 'Pizza de frango',
                  image: 'assets/revenues/pizza_frango.jpg',
                  time: '40min',
                  qtdIngredients: '9 itens',
                  level: 'difícil',
                  modoPreparo: '1. Misture as claras com a Aveia\n'
                      '2. Despeje a massa em uma frigideira untada \ncom o azeite e tampe\n'
                      '3. Deixe em fogo baixo até que a massa fique firme, \n(com a consistência de pizza) e vire o lado.\n'
                      '4. Retire a massa da frigideira e recheie com o molho de \ntomate, tofu, tomate, cebola e orégano.\n'
                      '5. Leve ao forno por 10 minutos ou até dourar.',
                  ingredients: '• Ovo (5 claras)\n'
                      '• Molho de tomate caseiro (5 colheres de sopa)\n'
                      '• Tofu (opcional 3 fatias)\n'
                      '• Frango desfiado e refogado (4 colheres de sopa)\n'
                      '• Tomate (1 unidade cortado em rodelas)\n'
                      '• Cebola (1 unidade cortado em rodelas)\n'
                      '• Azeite (para untar a forma)\n'
                      '• Óregano e cebolinha (à gosto).'
                      )
              : const SizedBox.shrink(),
          revenuesStore.bodyRevenueSelected == 2
              ? revenues(
                  titleRevenue: 'Escondidinho de batata doce',
                  image: 'assets/revenues/escondidinho_batata_doce.jpg',
                  time: '40min',
                  qtdIngredients: '7 itens',
                  level: 'difícil',
                  modoPreparo: '1. Cozinhe as batatas e o frango\n'
                      '2. Desfie o frando e esprema as batatas\n'
                      '3. Misture as batatas com os temperos e o azeite\n'
                      '4. Unte uma forma com o azeite\n'
                      '5. Monte o escondidinho com uma camada da massa de batata, \n uma de frango e outra de batatas\n'
                      '6. Coloque o parmesão por cima e leve ao forno,\naté ficar dourado'
              ,
                  ingredients: '• Batata doce (2 unidades)\n'
                      '• Frango desfiado (450 g)\n'
                      '• Cebola (1 unidade)\n'
                      '• Cream cheese (1 colher de sopa)\n'
                      'vQueijo Parmesão (50g)\n'
                      '• Orégano, sal e pimenta (à gosto)\n'
                      )
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
                    color: ColorsUtils.redSecondary,
                  ),
                  Text(time),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.list_alt_sharp,
                    size: 22,
                    color: ColorsUtils.redSecondary,
                  ),
                  Text(qtdIngredients),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.leaderboard_outlined,
                    size: 22,
                    color: ColorsUtils.redSecondary,
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
                      ? ColorsUtils.redPrimary
                      : ColorsUtils.redGray,
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
                      ? ColorsUtils.redGray
                      : ColorsUtils.redPrimary,
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
