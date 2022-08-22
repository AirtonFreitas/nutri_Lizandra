import 'package:flutter/material.dart';

class BodyHomeWidget extends StatefulWidget {
  const BodyHomeWidget({Key? key}) : super(key: key);

  @override
  State<BodyHomeWidget> createState() => _BodyHomeWidgetState();
}

class _BodyHomeWidgetState extends State<BodyHomeWidget> {
  bool isLoggin = false;

  @override
  Widget build(BuildContext context) {
    return isLoggin
        ? Container(
            child: Text('Olá Airton'),
          )
        : _vamosFazerCadastro();
  }


  _vamosFazerCadastro() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
      Text('Vamos fazer cadastro?', style: TextStyle(fontFamily: 'GeosansLight', fontSize: 22),),
      SizedBox(height: 6,),
      Text('Assim vamos ver as melhores opções para seu perfil', style: TextStyle(fontFamily: 'GeosansLight', fontSize: 16),),
      TextButton(
        onPressed: () {
          Navigator.pushNamed(context, 'registration-name');
        },
        child: Text('avançar'),
      )
    ],)));
        }
}