import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../src/utils/colors_utils.dart';
import 'revenues_coffee_store.dart';

final revenuesStore = RevenuesCoffeStore();

class RevenueCoffeWidget extends StatefulWidget {
  const RevenueCoffeWidget({Key? key}) : super(key: key);

  @override
  State<RevenueCoffeWidget> createState() => _RevenueCoffeWidget();
}

class _RevenueCoffeWidget extends State<RevenueCoffeWidget> {
  bool _ingredientesActive = true;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (BuildContext context) {
      return Column(
        children: [
          const Text(
            'Receitas para o Café',
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
                            AssetImage('assets/revenues/pao_leite.jpg'),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Pão de \n leite em pó',
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
                            AssetImage('assets/revenues/cappuccino.jpg'),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Cappuccino \n gelado',
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
                            AssetImage('assets/revenues/bolinho_couve_flor.jpg'),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Bolinho de \n couve flor',
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
                  titleRevenue: 'Pão de leite em pó',
                  image: 'assets/revenues/pao_leite.jpg',
                  time: '10min',
                  qtdIngredients: '3 itens',
                  level: 'médio',
                  modoPreparo: '1. Misture tudo.\n'
                      '2. Pré aqueça o forno à 180°C.\n'
                      '3. Modele os pães no formato que desejar.\n'
                      '4. Leve ao forno por cerca de 30 minutos.\n'
                      '5. Retire do forno quando os pães estiverem dourados na superfície.\n'
                      'Pode ser qualquer leite em pó (até desnatado).',
                  ingredients: '• Ovo (1 unidade)\n'
                      '• Fermento químico (1 colher de chá)\n'
                      '• Leite em pó (3 à 5 colheres de sopa)\n'
                      'Quantidade para fazer 3 pãezinhos.')
              : const SizedBox.shrink(),
          revenuesStore.bodyRevenueSelected == 1
              ? revenues(
                  titleRevenue: 'Cappuccino gelado',
                  image: 'assets/revenues/cappuccino.jpg',
                  time: '10min',
                  qtdIngredients: '5 itens',
                  level: 'fácil',
                  modoPreparo: 'Leve todos os ingredientes ao liquidificador.\n'
                      'Bata até ficarem bem processados.',
                  ingredients: '• Leite gelado (1 copo)\n'
                      '• Café em temperatura ambiente (1 colher de chá)\n'
                      '• Canela em pó (1 colher de café)\n'
                      '• Pedras de gelo (6 unidades)\n'
                      '• Adoçante a gosto')
              : const SizedBox.shrink(),
          revenuesStore.bodyRevenueSelected == 2
              ? revenues(
                  titleRevenue: 'Bolinho de couve flor',
                  image: 'assets/revenues/bolinho_couve_flor.jpg',
                  time: '45min',
                  qtdIngredients: '8 itens',
                  level: 'difícil',
                  modoPreparo: '1. Cozinhe a couve flor à vapor, até ficar bem macia;\n'
                      '2. Leve a couve flor ao processador;\n'
                      '3. Adicione cebola em cubos, farinhad e linhaça, azeite;\n'
                      '4. Adicione temperos a gosto e espere esfriar;\n'
                      '5. Adicione farinha de mandioca e fermento \nquímico e misture bem;\n'
                      '6. Faça os bolinhos e leve ao forno por 25 à \n30 minutos, com o forno pré aquecido a 180ºC.'
                      ,
                  ingredients: '• Couve flor (1 unidade)\n'
                      '• Cebola cortada em cubos(½ unidade)\n'
                      '• Farinha de linhaça (2 colheres)\n'
                      '• Azeite de oliva (2 colheres de sopa)\n'
                      '• Sal e temperos a gosto\n'
                      '• Cominho em pó (½ colher de chá)\n'
                      '• Farinha de mandioca (¼ xícara de farinha)\n'
                      '• Fermento químico em pó (½ colher de chá)\n')
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
                    color: ColorsUtils.purpleSecondary,
                  ),
                  Text(time),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.list_alt_sharp,
                    size: 22,
                    color: ColorsUtils.purpleSecondary,
                  ),
                  Text(qtdIngredients),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.leaderboard_outlined,
                    size: 22,
                    color: ColorsUtils.purpleSecondary,
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
                      ? ColorsUtils.purplePrimary
                      : ColorsUtils.purpleGray,
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
                      ? ColorsUtils.purpleGray
                      : ColorsUtils.purplePrimary,
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
