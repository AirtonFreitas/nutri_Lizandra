import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../src/utils/colors_utils.dart';
import 'revenues_sweet_store.dart';

final revenuesStore = RevenuesSweetStore();

class RevenueSweetWidget extends StatefulWidget {
  const RevenueSweetWidget({Key? key}) : super(key: key);

  @override
  State<RevenueSweetWidget> createState() => _RevenueSweetWidget();
}

class _RevenueSweetWidget extends State<RevenueSweetWidget> {
  bool _ingredientesActive = true;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (BuildContext context) {
      return Column(
        children: [
          const Text(
            'Receitas de Doces',
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
                            AssetImage('assets/revenues/danete_caseiro.jpg'),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Danete \n caseiro',
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
                            AssetImage('assets/revenues/bolo_fuba.jpg'),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Bolo de fubá \n com goiabada',
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
                            AssetImage('assets/revenues/sorvete_banana.jpg'),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Sorvete \n de banana',
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
                  titleRevenue: 'Danete Fit',
                  image: 'assets/revenues/danete_caseiro.jpg',
                  time: '10min',
                  qtdIngredients: '3 itens',
                  level: 'fácil',
                  modoPreparo:
                      'Misture tudo em uma tigela e coloque no micro-ondas por 4 minutos, \nsempre mexendo de 30s em 30s. \nDepois deixe esfriar e coloque na geladeira.',
                  ingredients: '• Leite de coco (200ml)\n'
                      '• Cacau 100% (2 colheres de sopa)\n'
                      '• Adoçante xilitol (1 colher de chá)\n'
                      '  obs:Se usar o cacau 70% não precisa de adoçante')
              : const SizedBox.shrink(),
          revenuesStore.bodyRevenueSelected == 1
              ? revenues(
                  titleRevenue: 'Bolo de fubá com goiabada',
                  image: 'assets/revenues/bolo_fuba.jpg',
                  time: '40min',
                  qtdIngredients: '7 itens',
                  level: 'difícil',
                  modoPreparo: '1. Bata o ovo e depois acrescente os demais \ningredientes na ordem da lista\n'
                      '2. Despeje a mistura na frigideira untada com óleo de coco\n'
                      '3. Mantenha o fogo baixo e tampe a frigideira.\n'
                      '4. Espere dopurar de um lado e depois vire',
                  ingredients: '• Ovo (1 unidade)\n'
                      '• Farinha de aveia (1 colher de sopa)\n'
                      '• Farinha de linhaça (1 colher de sopa)\n'
                      '• Leite de arroz, ou de sua preferência (1 colher de sopa)\n'
                      '• Açúcar (1 colher de chá) ou adoçante\n'
                      '• Fermento em pó (1 colher de chá)\n'
                      '• Goiabada diet (pedacinhos)'
                      )
              : const SizedBox.shrink(),
          revenuesStore.bodyRevenueSelected == 2
              ? revenues(
                  titleRevenue: 'Sorvete de banana',
                  image: 'assets/revenues/sorvete_banana.jpg',
                  time: '20min',
                  qtdIngredients: '4 itens',
                  level: 'fácil',
                  modoPreparo: '1. Congele as bananas picadas por 3 horas\n'
                      '2. Bata no liquidificador adicionando o cacau e a chia\n'
                      'Bata aos poucos formando um creme.',
                  ingredients: '• Banana madura (2 unidades)\n'
                      '• Cacau em pó (1 colher de sopa)\n'
                      '• Semente de chia (1 colher de sopa)\n'
                      '• Adoçante natural (à gosto e opcional)\n'
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
                    color: ColorsUtils.yellowSecondary,
                  ),
                  Text(time),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.list_alt_sharp,
                    size: 22,
                    color: ColorsUtils.yellowSecondary,
                  ),
                  Text(qtdIngredients),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.leaderboard_outlined,
                    size: 22,
                    color: ColorsUtils.yellowSecondary,
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
                      ? ColorsUtils.yellowPrimary
                      : ColorsUtils.yellowGray,
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
                      ? ColorsUtils.yellowGray
                      : ColorsUtils.yellowPrimary,
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
