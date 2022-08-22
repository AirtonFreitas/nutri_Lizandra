import 'package:flutter/material.dart';

class BodyProfileNutriWidget extends StatefulWidget {
  const BodyProfileNutriWidget({Key? key}) : super(key: key);

  @override
  State<BodyProfileNutriWidget> createState() => _BodyProfileNutriWidgetState();
}

class _BodyProfileNutriWidgetState extends State<BodyProfileNutriWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Body Profile Nutri Widget',
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
