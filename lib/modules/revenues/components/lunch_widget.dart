import 'package:flutter/material.dart';

import '../../../src/utils/colors_utils.dart';

class RevenuesLunch extends StatefulWidget {
  const RevenuesLunch({Key? key}) : super(key: key);

  @override
  State<RevenuesLunch> createState() => _RevenuesLunchState();
}

class _RevenuesLunchState extends State<RevenuesLunch> {
  bool _ingredientesActive = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image(image: AssetImage('assets/revenues/cookies_amendoim.jpg')),
            Positioned(
              top: 20,
              left: 10,
              child: Container(padding: EdgeInsets.all(8),
                color: ColorsUtils.darkSecondary,
                child: Text(
                  'Cookies de amendoim',
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
                  color: ColorsUtils.blueSecondary,
                ),
                Text('4min'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.list_alt_sharp,
                  size: 22,
                  color: ColorsUtils.blueSecondary,
                ),
                Text('4 itens'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.leaderboard_outlined,
                  size: 22,
                  color: ColorsUtils.blueSecondary,
                ),
                Text('fácil'),
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
        SizedBox(
          height: 12,
        ),
        Container(
            child: _ingredientesActive ? _ingredientes() : _preparo()),
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
          Text('1. Pré-aqueça o forno a 180 °C.\n'
              '2. Misture todos os ingredientes com um garfo até que fique homogêneo.\n'
              '3. Coloque em uma forma antiaderente a massa em forma de pequenas bolas (1 colher de sopa cheia para cada bola).\n'
              '4. Asse por 10 a 12 minutos, até que comece a ficar dourado.'),
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
              Text('Pasta de amendoim (1/3 de xícara)'),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_right_outlined,
                size: 26,
              ),
              Text('Banana (1 unidade)'),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_right_outlined,
                size: 26,
              ),
              Text('Canela em pó (1 colher de chá)'),
            ],
          ),
        ],
      ),
    );
  }
}
