import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:realiza_nutri/database/firebase_database.dart';
import 'registration_store.dart';

final registrationStore = RegistrationStore();

class RegistrationProfile extends StatefulWidget {
  const RegistrationProfile({Key? key}) : super(key: key);

  @override
  State<RegistrationProfile> createState() => _RegistrationProfileState();
}

class _RegistrationProfileState extends State<RegistrationProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(builder: (BuildContext context) {
              return Center(
                child: _widgetOption.elementAt(registrationStore.pageActive),
              );
            }),
          ],
        ),
      ),
    ));
  }

  static final List<Widget> _widgetOption = <Widget>[
    solicitaNome(),
    solicitaIdade(),
    solicitaPeso(),
    solicitaAltura(),
    solicitaGen(),
    solicitaObjetivo(),
    solicitaAtividade(),
  ];
}

_toast(String toast) {
  Fluttertoast.showToast(
      msg: toast,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM_RIGHT,
      timeInSecForIosWeb: 1,
      fontSize: 16.0);
}

solicitaNome() {
  return Column(
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
            registrationStore.setName(text);
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
          registrationStore.name == null
              ? _toast('Favor preencher o nome')
              : registrationStore.nextPage();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Text('avançar'),
      )
    ],
  );
}

solicitaIdade() {
  return Column(
    children: [
      Text(
        'Qual sua idade?',
        style: TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
      ),
      SizedBox(
        height: 18,
      ),
      TextField(
        onChanged: (text) {
          registrationStore.setIdade(text);
        },
        controller: TextEditingController(),
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
        ),
      ),
      SizedBox(
        height: 12,
      ),
      TextButton(
        onPressed: () {
          registrationStore.idade == null
              ? _toast('Favor preencher sua idade')
              : registrationStore.nextPage();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Text('avançar'),
      )
    ],
  );
}

solicitaPeso() {
  return Column(
    children: [
      Text(
        'Qual seu peso?',
        style: TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
      ),
      SizedBox(
        height: 18,
      ),
      TextField(
        onChanged: (text) {
          registrationStore.setPeso(text);
        },
        controller: TextEditingController(),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.2),
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.2),
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
        ),
        keyboardType: TextInputType.number,
      ),
      SizedBox(
        height: 12,
      ),
      TextButton(
        onPressed: () {
          registrationStore.peso == null
              ? _toast('Favor preencher seu peso')
              : registrationStore.nextPage();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Text('avançar'),
      )
    ],
  );
}

solicitaAltura() {
  return Column(
    children: [
      Text(
        'Qual sua altura?',
        style: TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
      ),
      SizedBox(
        height: 18,
      ),
      TextField(
        onChanged: (text) {
          registrationStore.setAltura(text);
        },
        controller: TextEditingController(),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.2),
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.2),
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
        ),
        keyboardType: TextInputType.number,
      ),
      SizedBox(
        height: 12,
      ),
      TextButton(
        onPressed: () {
          registrationStore.altura == null
              ? _toast('Favor preencher sua altura')
              : registrationStore.nextPage();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Text('avançar'),
      )
    ],
  );
}

solicitaGen() {
  return Column(
    children: [
      Text(
        'Qual seu genero?',
        style: TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
      ),
      SizedBox(
        height: 18,
      ),
      TextField(
          onChanged: (text) {
            registrationStore.setGenero(text);
          },
          controller: TextEditingController(),
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
          registrationStore.genero == null
              ? _toast('Favor preencher')
              : registrationStore.nextPage();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Text('avançar'),
      )
    ],
  );
}

solicitaObjetivo() {
  return Column(
    children: [
      Text(
        'Qual seu objetivo?',
        style: TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
      ),
      SizedBox(
        height: 18,
      ),
      TextField(
          onChanged: (text) {
            registrationStore.setObjetivo(text);
          },
          controller: TextEditingController(),
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
          registrationStore.objetivoNutricional == null
              ? _toast('Favor preencher')
              : registrationStore.nextPage();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Text('avançar'),
      )
    ],
  );
}

solicitaAtividade() {
  return Column(
    children: [
      Text(
        'Você pratica Atividades Físicas?',
        style: TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
      ),
      SizedBox(
        height: 18,
      ),
      TextField(
          onChanged: (text) {
            registrationStore.setAtividade(text);
          },
          controller: TextEditingController(),
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
          registrationStore.atividadeFisica == null
              ? _toast('Favor preencher')
              : FirebaseData.saveRegister(
                  '${registrationStore.name}',
                  '${registrationStore.idade}',
                  '${registrationStore.peso}',
                  '${registrationStore.altura}',
                  '${registrationStore.genero}',
                  '${registrationStore.objetivoNutricional}',
                  '${registrationStore.atividadeFisica}',
                );
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Text('avançar'),
      )
    ],
  );
}
