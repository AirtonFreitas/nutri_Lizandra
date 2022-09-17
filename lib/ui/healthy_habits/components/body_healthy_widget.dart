import 'package:flutter/material.dart';

class BodyHealthyWidget extends StatefulWidget {
  const BodyHealthyWidget({Key? key}) : super(key: key);

  @override
  State<BodyHealthyWidget> createState() => _BodyHealthyWidget();
}

class _BodyHealthyWidget extends State<BodyHealthyWidget> {
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
            children: [Text('habitos')],
          ),
        ));
  }
}
