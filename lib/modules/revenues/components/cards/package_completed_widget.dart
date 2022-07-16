import 'package:flutter/material.dart';
import 'package:realiza_nutri/modules/revenues/components/cards/items_package_completed_widget.dart';

class PacoteCompleto extends StatelessWidget {
  const PacoteCompleto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Programa Completo com Acompanhamento',
          style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
        ),
        SizedBox(height: 8),
        Text(
          'olha só tudo que tem incluso:',
          style: TextStyle(
              fontFamily: 'GeosansLight',
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        ItemsPakageCompleted(check: true,nameItem: 'Mais de 100 receitas saudáveis'),
        ItemsPakageCompleted(check: true,nameItem: 'Acompanhamento Nutricional'),
        ItemsPakageCompleted(check: true,nameItem: 'Chat direto com a Nutri'),
        ItemsPakageCompleted(check: true,nameItem: 'Dicas Nutricionais'),
        ItemsPakageCompleted(check: true,nameItem: 'Grupo de Desafios'),
      ],
    );
  }
}
