import 'package:flutter/material.dart';
import 'cards/revenue_card_widget.dart';

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
        CardFreeRevenues(
            titleCard: 'Doces saudáveis',
            imageCard: 'assets/revenues/danete_caseiro.jpg',
            titleRevenue: 'Danete Fit',
            subtitleRevenue: 'Saudável e saboroso'),
        SizedBox(width: 8),
        CardFreeRevenues(
            titleCard: 'Almoço saudável',
            imageCard: 'assets/revenues/tomate_ricota.jpg',
            titleRevenue: 'Tomate com Ricota',
            subtitleRevenue: 'Recheado simples'),
        SizedBox(width: 8),
        CardFreeRevenues(
            titleCard: 'Lanche saudável',
            imageCard: 'assets/revenues/cookies_amendoim.jpg',
            titleRevenue: 'Cookies Amendoim',
            subtitleRevenue: 'Rápido e saboroso'),
      ]),
    );
  }
}
