import 'package:flutter/material.dart';

class BodyPlanWidget extends StatefulWidget {
  const BodyPlanWidget({Key? key}) : super(key: key);

  @override
  State<BodyPlanWidget> createState() => _BodyPlanWidget();
}

class _BodyPlanWidget extends State<BodyPlanWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Plano Alimentar abaixo',
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
