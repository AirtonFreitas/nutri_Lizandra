import 'package:flutter/material.dart';
import 'cards/components/version_free_card_widget.dart';
import 'cards/revenue_free_card_widget.dart';

class BodyRevenueFreeWidget extends StatefulWidget {
  const BodyRevenueFreeWidget({Key? key}) : super(key: key);

  @override
  State<BodyRevenueFreeWidget> createState() => _BodyRevenueFreeWidgetState();
}

class _BodyRevenueFreeWidgetState extends State<BodyRevenueFreeWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(top: 12),
      child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
        VersaoFree(),
        CardFreeRevenues(
            titleCard: 'Doces saudáveis',
            imageCard: 'assets/revenues/danete_caseiro.jpg',
            titleRevenue: 'Danete Fit',
            subtitleRevenue: 'saboroso e baixa caloria'),
        SizedBox(width: 8),
        CardFreeRevenues(
            titleCard: 'Receitas para um almoço saudável',
            imageCard: 'assets/revenues/tomate_ricota.jpg',
            titleRevenue: 'Tomate com Ricota',
            subtitleRevenue: 'saboroso e baixa caloria'),
        SizedBox(width: 8),
        CardFreeRevenues(
            titleCard: 'Lanches saudáveis',
            imageCard: 'assets/revenues/cookies_amendoim.jpg',
            titleRevenue: 'Cookies de Amendoim',
            subtitleRevenue: 'saboroso e baixa caloria'),
      ]),
    );
  }
}
