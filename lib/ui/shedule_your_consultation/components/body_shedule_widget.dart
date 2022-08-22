import 'package:flutter/material.dart';

class BodySheduleWidget extends StatefulWidget {
  const BodySheduleWidget({Key? key}) : super(key: key);

  @override
  State<BodySheduleWidget> createState() => _BodySheduleWidgetState();
}

class _BodySheduleWidgetState extends State<BodySheduleWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Body Shedule Widget',
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
