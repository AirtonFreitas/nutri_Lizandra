import 'package:flutter/material.dart';

class BodyErrosMainWidget extends StatefulWidget {
  const BodyErrosMainWidget({Key? key}) : super(key: key);

  @override
  State<BodyErrosMainWidget> createState() => _BodyErrosMainWidgetState();
}

class _BodyErrosMainWidgetState extends State<BodyErrosMainWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40),
              ),
            ),
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
                child: Column(
                  children: [
                    const Text('Principais erros',
                        style: TextStyle(
                            fontSize: 28, fontFamily: 'GeosansLight')),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/dieta_restritiva.png',
                          width: 150,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        const Text(
                          'Dietas Restritivas',
                          style: TextStyle(
                              fontSize: 22, fontFamily: 'GeosansLight'),
                        ),
                      ],
                    )
                  ],
                ),)
        ));
  }
}
