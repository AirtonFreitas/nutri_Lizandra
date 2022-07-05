import 'package:flutter/material.dart';

class BodyHomeWidget extends StatefulWidget {
  const BodyHomeWidget({Key? key}) : super(key: key);

  @override
  State<BodyHomeWidget> createState() => _BodyHomeWidgetState();
}

class _BodyHomeWidgetState extends State<BodyHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'teste',
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
