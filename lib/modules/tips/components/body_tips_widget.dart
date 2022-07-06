import 'package:flutter/material.dart';

class BodyTipsWidget extends StatefulWidget {
  const BodyTipsWidget({Key? key}) : super(key: key);

  @override
  State<BodyTipsWidget> createState() => _BodyTipsWidgetState();
}

class _BodyTipsWidgetState extends State<BodyTipsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Body Tips Widget',
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
