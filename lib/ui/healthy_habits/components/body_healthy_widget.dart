import 'package:flutter/material.dart';

class BodyHealthyWidget extends StatefulWidget {
  const BodyHealthyWidget({Key? key}) : super(key: key);

  @override
  State<BodyHealthyWidget> createState() => _BodyHealthyWidget();
}

class _BodyHealthyWidget extends State<BodyHealthyWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Body Healthy Widget',
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
