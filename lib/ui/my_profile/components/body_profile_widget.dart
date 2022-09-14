import 'package:flutter/material.dart';

class BodyProfileWidget extends StatefulWidget {
  const BodyProfileWidget({Key? key}) : super(key: key);

  @override
  State<BodyProfileWidget> createState() => _BodyProfileWidgetState();
}

class _BodyProfileWidgetState extends State<BodyProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Meu Perfil aqui embaixo:',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'GeosansLight',
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
        Row(children: [

                  ]),
      ]),
    );
  }
}
