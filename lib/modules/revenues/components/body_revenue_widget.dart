import 'package:flutter/material.dart';

class BodyRevenueWidget extends StatefulWidget {
  const BodyRevenueWidget({Key? key}) : super(key: key);

  @override
  State<BodyRevenueWidget> createState() => _BodyRevenueWidgetState();
}

class _BodyRevenueWidgetState extends State<BodyRevenueWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Body Revenue Widget',
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
