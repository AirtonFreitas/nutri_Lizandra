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
            'COMER BEM, QUE MAL TEM?',
            style: TextStyle(
              fontFamily: 'GeosansLightItalic',
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
