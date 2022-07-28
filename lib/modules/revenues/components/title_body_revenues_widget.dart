import 'package:flutter/material.dart';

class RevenueTitleBody extends StatelessWidget {
  const RevenueTitleBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Text(
            'Receitas e Cardápios',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
