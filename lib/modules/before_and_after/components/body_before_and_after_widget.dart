import 'package:flutter/material.dart';

class BodyBeforeAndAfterWidget extends StatefulWidget {
  const BodyBeforeAndAfterWidget({Key? key}) : super(key: key);

  @override
  State<BodyBeforeAndAfterWidget> createState() => _BodyBeforeAndAfterWidgetState();
}

class _BodyBeforeAndAfterWidgetState extends State<BodyBeforeAndAfterWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Body Before And After Widget',
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
