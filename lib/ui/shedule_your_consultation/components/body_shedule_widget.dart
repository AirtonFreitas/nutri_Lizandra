import 'package:flutter/material.dart';

class BodySheduleWidget extends StatefulWidget {
  const BodySheduleWidget({Key? key}) : super(key: key);

  @override
  State<BodySheduleWidget> createState() => _BodySheduleWidgetState();
}

class _BodySheduleWidgetState extends State<BodySheduleWidget> {
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
            children: [Text('Agende sua consulta')],
          ),
        ));
  }
}
