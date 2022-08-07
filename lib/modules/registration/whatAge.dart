import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WhatsAge extends StatelessWidget {
  const WhatsAge({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    int? age;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Qual é a sua idade?',
              style: TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
            ),
            SizedBox(
              height: 18,
            ),
            TextField(
                onChanged: (textAge) {
                  age = textAge as int?;
                },
                keyboardType: TextInputType.number,
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
                age == null
                    ? _toast('Favor preencher sua idade')
                    :
                    print('meu nome é $name e minha idade é $age');
                // Navigator.pushNamed(context, 'registration-age',
                //         arguments: {name, age});
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
        fontSize: 16.0);
  }
}
