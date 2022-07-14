import 'package:flutter/material.dart';
import 'package:realiza_nutri/modules/revenues/components/receitas_card_widget.dart';
import 'package:realiza_nutri/src/utils/colors_utils.dart';

class BodyRevenueWidget extends StatefulWidget {
  const BodyRevenueWidget({Key? key}) : super(key: key);

  @override
  State<BodyRevenueWidget> createState() => _BodyRevenueWidgetState();
}

class _BodyRevenueWidgetState extends State<BodyRevenueWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(top: 12),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        CardRevenues(
            titleCard: '14 opções de Doces saudáveis',
            imageCard: 'assets/revenues/danete_caseiro.jpg',
            titleRevenue: 'DANETE FIT',
            subtitleRevenue: 'saboroso e baixa caloria'),
        SizedBox(width: 8),
        CardRevenues(
            titleCard: '15 receitas para um almoço saudável',
            imageCard: 'assets/revenues/tomate_ricota.jpg',
            titleRevenue: 'TOMATE COM RICOTA',
            subtitleRevenue: 'saboroso e baixa caloria'),
        SizedBox(width: 8),
        CardRevenues(
            titleCard: '17 lanches saudáveis',
            imageCard: 'assets/revenues/cookies_amendoim.jpg',
            titleRevenue: 'COOKIES DE AMENDOIM',
            subtitleRevenue: 'saboroso e baixa caloria'),
      ]),
    );
  }
}
