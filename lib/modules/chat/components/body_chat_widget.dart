import 'package:flutter/material.dart';

class BodyChatWidget extends StatefulWidget {
  const BodyChatWidget({Key? key}) : super(key: key);

  @override
  State<BodyChatWidget> createState() => _BodyChatWidget();
}

class _BodyChatWidget extends State<BodyChatWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Chat com a Nutri aqui embaixo:',
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
