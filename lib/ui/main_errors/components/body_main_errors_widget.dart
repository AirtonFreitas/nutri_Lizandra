import 'package:flutter/material.dart';

class BodyErrosMainWidget extends StatefulWidget {
  const BodyErrosMainWidget({Key? key}) : super(key: key);

  @override
  State<BodyErrosMainWidget> createState() => _BodyErrosMainWidgetState();
}

class _BodyErrosMainWidgetState extends State<BodyErrosMainWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Body Erros Main Widget',
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
