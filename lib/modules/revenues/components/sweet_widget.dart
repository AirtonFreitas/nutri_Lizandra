import 'package:flutter/material.dart';
import '../../../src/utils/colors_utils.dart';

class RevenuesSweet extends StatefulWidget {
  const RevenuesSweet({Key? key}) : super(key: key);

  @override
  State<RevenuesSweet> createState() => _RevenuesSweetState();
}

class _RevenuesSweetState extends State<RevenuesSweet> {
  bool _ingredientesActive = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image(image: AssetImage('assets/revenues/danete_caseiro.jpg')),
            Positioned(
              top: 20,
              left: 10,
              child: Container(padding: EdgeInsets.all(8),
                color: ColorsUtils.darkSecondary,
                child: Text(
                  'Danete fit',
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
                  color: ColorsUtils.yellowSecondary,
                ),
                Text('4min'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.list_alt_sharp,
                  size: 22,
                  color: ColorsUtils.yellowSecondary,
                ),
                Text('3 itens'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.leaderboard_outlined,
                  size: 22,
                  color: ColorsUtils.yellowSecondary,
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
          Text(
              'Misture tudo em uma tigela e coloque no micro-ondas por 4 minutos, sempre mexendo de 30s em 30s. \nDepois deixe esfriar e coloque na geladeira.'),
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
              Text('Leite de coco (200mL - 1 copo)'),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_right_outlined,
                size: 26,
              ),
              Text('Cacau 100% (2 colheres de sopa)'),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_right_outlined,
                size: 26,
              ),
              Text('Adoçante xilitol (1 colher de chá)'),
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
              Text(' Se usar cacau 70% não precisa colocar adoçante.'),
            ],
          ),
        ],
      ),
    );
  }
}
