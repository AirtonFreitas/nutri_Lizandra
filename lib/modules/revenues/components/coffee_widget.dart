import 'package:flutter/material.dart';

import '../../../src/utils/colors_utils.dart';

class RevenuesCoffee extends StatefulWidget {
  const RevenuesCoffee({Key? key}) : super(key: key);

  @override
  State<RevenuesCoffee> createState() => _RevenuesCoffeeState();
}

class _RevenuesCoffeeState extends State<RevenuesCoffee> {
  bool _ingredientesActive = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image(image: AssetImage('assets/revenues/pao_leite.jpg')),
            Positioned(
              top: 20,
              left: 10,
              child: Container(padding: EdgeInsets.all(8),
                color: ColorsUtils.darkSecondary,
                child: Text(
                  'Pão de leite em pó',
                  style: TextStyle(
                      color: ColorsUtils.white,
                      fontSize: 30,
                      fontFamily: 'GeosansLight',
                      fontWeight: FontWeight.w900),
                ),),
            )
          ],
        ),
        SizedBox(height: 12),
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
                Text('10min'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.list_alt_sharp,
                  size: 22,
                  color: ColorsUtils.purpleSecondary,
                ),
                Text('3 itens'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.leaderboard_outlined,
                  size: 22,
                  color: ColorsUtils.purpleSecondary,
                ),
                Text('médio'),
              ],
            ),
          ],
        ),
        SizedBox(height: 12),
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
        SizedBox(
          height: 12,
        ),
        Container(
            child: _ingredientesActive ? _ingredientes() : _preparo()),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }

  _preparo() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Text(
            'Modo de Preparo',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text('Misture tudo e leve para assar.\n'
              'Pode ser qualquer leite em pó (até desnatado).'),
        ],
      ),
    );
  }

  _ingredientes() {
    return Padding(
      padding: EdgeInsets.all(2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.arrow_right_outlined,
                size: 26,
              ),
              Text('Ovo (1 unidade)'),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_right_outlined,
                size: 26,
              ),
              Text('Fermento químico (1 colher de chá)'),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_right_outlined,
                size: 26,
              ),
              Text('Leite em pó (3 à 5 colheres de sopa)'),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 18,
              ),
              Icon(
                Icons.notification_important_outlined,
                size: 12,
              ),
              Text(' Quantidade para fazer 3 pãezinhos.'),
            ],
          ),
        ],
      ),
    );
  }
}
