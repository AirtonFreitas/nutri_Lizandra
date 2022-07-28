import 'package:flutter/material.dart';
import 'package:realiza_nutri/src/utils/colors_utils.dart';

import '../app_bar.dart';

class RevenueDetails extends StatefulWidget {
  const RevenueDetails({Key? key}) : super(key: key);

  @override
  State<RevenueDetails> createState() => _RevenueDetailsState();
}

class _RevenueDetailsState extends State<RevenueDetails> {
  bool _ingredientesActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarRevenueWidget(
          imageBar: 'pera',
          title: 'Receitas Doces',
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image(image: AssetImage('assets/revenues/danete_caseiro.jpg')),
              Positioned(
                  top: 20,
                  left: 10,
                  child: Text(
                    'Danete fit',
                    style: TextStyle(
                        color: ColorsUtils.white,
                        fontSize: 36,
                        fontFamily: 'GeosansLight',
                        fontWeight: FontWeight.w900),
                  ))
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
                    size: 26,
                    color: ColorsUtils.greenSecondary,
                  ),
                  Text('4min'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.list_alt_sharp,
                    size: 26,
                    color: ColorsUtils.greenSecondary,
                  ),
                  Text('3 itens'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.leaderboard_outlined,
                    size: 26,
                    color: ColorsUtils.greenSecondary,
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
              Container(
                color: _ingredientesActive
                    ? ColorsUtils.greenPrimary
                    : ColorsUtils.greenNav,
                width: MediaQuery.of(context).size.width / 2,
                height: 48,
                alignment: Alignment.center,
                child: InkWell(
                    onTap: () {
                      setState(() {
                        _ingredientesActive = true;
                      });
                    },
                    child: Text('     Ingredientes     '.toUpperCase())),
              ),
              Container(
                color: _ingredientesActive
                    ? ColorsUtils.greenNav
                    : ColorsUtils.greenPrimary,
                width: MediaQuery.of(context).size.width / 2,
                height: 48,
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _ingredientesActive = false;
                    });
                  },
                  child: Text('     Preparo     '.toUpperCase()),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Container(child: _ingredientesActive ? _ingredientes() : _preparo()),
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

  _preparo() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Text('Modo de Preparo', style: TextStyle(fontSize: 16,),),
          SizedBox(height: 12,),
          Text(
              'Misture tudo em uma tigela e coloque no micro-ondas por 4 minutos, sempre mexendo de 30s em 30s. \nDepois deixe esfriar e coloque na geladeira.'),
        ],
      ),
    );
  }
}
