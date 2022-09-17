import 'package:flutter/material.dart';

class BodyProfileNutriWidget extends StatefulWidget {
  const BodyProfileNutriWidget({Key? key}) : super(key: key);

  @override
  State<BodyProfileNutriWidget> createState() => _BodyProfileNutriWidgetState();
}

class _BodyProfileNutriWidgetState extends State<BodyProfileNutriWidget> {
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
            children: [Text('Conheça a  nutri')],
          ),
        ));
  }
}
