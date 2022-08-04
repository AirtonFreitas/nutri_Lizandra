import 'package:flutter/material.dart';
import 'package:realiza_nutri/database/firebase_database.dart';

class BodyHomeWidget extends StatefulWidget {
  const BodyHomeWidget({Key? key}) : super(key: key);

  @override
  State<BodyHomeWidget> createState() => _BodyHomeWidgetState();
}

class _BodyHomeWidgetState extends State<BodyHomeWidget> {
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Seja bem vindo ao Realiza Nutri',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'GeosansLight',
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        Row(children: [
          TextButton(
            onPressed: FirebaseData.saveData,
            child: Text('enviar'),
          ),
          TextButton(
            onPressed: FirebaseData.enviaMgs,
            child: Text('enviar chat'),
          ),
          // TextField(
          //   decoration: InputDecoration(hintText: 'nome'),
          //   keyboardType: TextInputType.text,
          // ),
        ]),
      ]),
    );
  }
}
