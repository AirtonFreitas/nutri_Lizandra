import 'package:flutter/material.dart';

class BodyBeforeAndAfterWidget extends StatefulWidget {
  const BodyBeforeAndAfterWidget({Key? key}) : super(key: key);

  @override
  State<BodyBeforeAndAfterWidget> createState() => _BodyBeforeAndAfterWidgetState();
}

class _BodyBeforeAndAfterWidgetState extends State<BodyBeforeAndAfterWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            ),
          ),
          child: Column(
            children: [Text('Antes e Depois')],
          ),
        ));
  }
}
