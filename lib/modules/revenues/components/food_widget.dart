import 'package:flutter/material.dart';

import '../../../src/utils/colors_utils.dart';

class RevenuesFood extends StatefulWidget {
  const RevenuesFood({Key? key}) : super(key: key);

  @override
  State<RevenuesFood> createState() => _RevenuesFoodState();
}

class _RevenuesFoodState extends State<RevenuesFood> {
  bool _ingredientesActive = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image(image: AssetImage('assets/revenues/tomate_ricota.jpg')),
            Positioned(
              top: 20,
              left: 10,
              child: Container(padding: EdgeInsets.all(8),
                  color: ColorsUtils.darkSecondary,
                  child: Text(
                'Tomate com ricota',
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
                  color: ColorsUtils.redSecondary,
                ),
                Text('45min'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.list_alt_sharp,
                  size: 22,
                  color: ColorsUtils.redSecondary,
                ),
                Text('7 itens'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.leaderboard_outlined,
                  size: 22,
                  color: ColorsUtils.redSecondary,
                ),
                Text('difícil'),
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
        SizedBox(
          height: 12,
        ),
        Container(child: _ingredientesActive ? _ingredientes() : _preparo()),
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
          Text(
              '1. Retire a tampa e a polpa dos tomates, deixando apenas a parte externa.\n'
              '2. Reserve a polpa para fazer molho de tomate natural.\n'
              '3. Misture os queijos, temperos e azeites em uma vasilha.\n'
              '4. Complete o interior dos tomates com a pasta.\n'
              '5. Leve ao forno a 200 °C durante 30 a 35 minutos.'),
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
              Text('Ricota fresca (1 unidade)'),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_right_outlined,
                size: 26,
              ),
              Text('Queijo parmesão ralado (100 g)'),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_right_outlined,
                size: 26,
              ),
              Text('Tomate (7 unidades)'),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_right_outlined,
                size: 26,
              ),
              Text('Cebola pequena (1 unidade)'),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_right_outlined,
                size: 26,
              ),
              Text('Orégano, sal e pimenta (a gosto)'),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_right_outlined,
                size: 26,
              ),
              Text('Manjericão e cheiro verde (a gosto)'),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_right_outlined,
                size: 26,
              ),
              Text('Azeite de oliva extravirgem (3 colheres de sopa)'),
            ],
          ),
        ],
      ),
    );
  }
}
