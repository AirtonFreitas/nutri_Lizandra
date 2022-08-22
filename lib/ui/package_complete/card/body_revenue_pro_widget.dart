import 'package:flutter/material.dart';

import 'components/revenue_pro_card_widget.dart';

class BodyRevenueProWidget extends StatefulWidget {
  const BodyRevenueProWidget({Key? key}) : super(key: key);

  @override
  State<BodyRevenueProWidget> createState() => _BodyRevenueProWidgetState();
}

class _BodyRevenueProWidgetState extends State<BodyRevenueProWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(top: 12),
      child: Row(crossAxisAlignment: CrossAxisAlignment.end,
          children: [
        CardRevenues(
            titleCard: '14 opções de Doces saudáveis',
            imageCard: 'assets/revenues/danete_caseiro.jpg',
            titleRevenue: 'Danete Fit',
            subtitleRevenue: 'saboroso e baixa caloria'),
        SizedBox(width: 8),
        CardRevenues(
            titleCard: '15 receitas para um almoço saudável',
            imageCard: 'assets/revenues/tomate_ricota.jpg',
            titleRevenue: 'Tomate com Ricota',
            subtitleRevenue: 'saboroso e baixa caloria'),
        SizedBox(width: 8),
        CardRevenues(
            titleCard: '17 lanches saudáveis',
            imageCard: 'assets/revenues/cookies_amendoim.jpg',
            titleRevenue: 'Cookies de Amendoim',
            subtitleRevenue: 'saboroso e baixa caloria'),
      ]),
    );
  }
}
