import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WhatsName extends StatelessWidget {
  const WhatsName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? name;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Qual seu nome?',
              style: TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
            ),
            SizedBox(
              height: 18,
            ),
            TextField(
                onChanged: (text) {
                  name = text;
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0.2),
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0.2),
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                )),
            SizedBox(
              height: 12,
            ),
            TextButton(
              onPressed: () {
                name == null ? _toast('Favor preencher o nome') : _toast(name.toString());
              },
              child: Text('avançar'),
            )
          ],
        ),
      ),
    ));
  }

  void _toast(String toast) {
    Fluttertoast.showToast(
        msg: toast,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM_RIGHT,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
