import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'items_package_completed_widget.dart';

class PacoteCompleto extends StatelessWidget {
  const PacoteCompleto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBarPackageCompleteWidget(
          imageBar: 'pera',
          title: 'Receitas Fit',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Programa completo com Acompanhamento',
            style: TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
          ),
          const SizedBox(height: 8),
          const Text(
            'olha só tudo que tem incluso:',
            style: TextStyle(
                fontFamily: 'GeosansLight',
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ItemsPakageCompleted(
              check: true, nameItem: 'Mais de 100 receitas saudáveis'),
          ItemsPakageCompleted(
              check: true, nameItem: 'Acompanhamento Nutricional'),
          ItemsPakageCompleted(
              check: true, nameItem: 'Chat direto com a Nutri'),
          ItemsPakageCompleted(check: true, nameItem: 'Dicas Nutricionais'),
          ItemsPakageCompleted(check: true, nameItem: 'Grupo de Desafios'),
        ],
      ),
    );
  }
}
