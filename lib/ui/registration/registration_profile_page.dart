import 'dart:ffi';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:realiza_nutri/database/firebase_database.dart';
import 'package:realiza_nutri/src/utils/colors_utils.dart';
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
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
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

void _toast(String toast) {
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
      const Text(
        'Qual seu nome?',
        style: TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
      ),
      const SizedBox(
        height: 18,
      ),
      TextField(
          onChanged: (text) {
            registrationStore.setName(text);
          },
          // ignore: prefer_const_constructors
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 0.2),
              borderRadius: BorderRadius.all(const Radius.circular(14)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 0.2),
              borderRadius: BorderRadius.all(Radius.circular(14)),
            ),
          )),
      const SizedBox(
        height: 12,
      ),
      TextButton(
        onPressed: () {
          registrationStore.name == null
              ? _toast('Favor preencher o nome')
              : registrationStore.nextPage();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: const Text('avançar'),
      )
    ],
  );
}

solicitaIdade() {
  return Column(
    children: [
      const Text(
        'Qual sua idade?',
        style: const TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
      ),
      const SizedBox(
        height: 18,
      ),
      TextField(
        onChanged: (text) {
          registrationStore.setIdade(text);
        },
        controller: TextEditingController(),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 0.2),
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 0.2),
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
        ),
      ),
      const SizedBox(
        height: 12,
      ),
      TextButton(
        onPressed: () {
          registrationStore.idade == null
              ? _toast('Favor preencher sua idade')
              : registrationStore.nextPage();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: const Text('avançar'),
      )
    ],
  );
}

solicitaPeso() {
  return Column(
    children: [
      const Text(
        'Qual seu peso?',
        style: TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
      ),
      const SizedBox(
        height: 18,
      ),
      TextField(
        onChanged: (text) {
          registrationStore.setPeso(text);
        },
        controller: TextEditingController(),
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 0.2),
            borderRadius: const BorderRadius.all(const Radius.circular(14)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 0.2),
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
        ),
        keyboardType: TextInputType.number,
      ),
      const SizedBox(
        height: 12,
      ),
      TextButton(
        onPressed: () {
          registrationStore.peso == null
              ? _toast('Favor preencher seu peso')
              : registrationStore.nextPage();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: const Text('avançar'),
      )
    ],
  );
}

solicitaAltura() {
  return Column(
    children: [
      const Text(
        'Qual sua altura?',
        style: TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
      ),
      const SizedBox(
        height: 18,
      ),
      TextField(
        onChanged: (text) {
          registrationStore.setAltura(text);
        },
        controller: TextEditingController(),
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 0.2),
            borderRadius: const BorderRadius.all(Radius.circular(14)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 0.2),
            borderRadius: const BorderRadius.all(const Radius.circular(14)),
          ),
        ),
        keyboardType: TextInputType.number,
      ),
      const SizedBox(
        height: 12,
      ),
      TextButton(
        onPressed: () {
          registrationStore.altura == null
              ? _toast('Favor preencher sua altura')
              : registrationStore.nextPage();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: const Text('avançar'),
      )
    ],
  );
}

solicitaGen() {
  return Column(
    children: [
      const Text(
        'Sexo atribuído no seu nascimento?',
        style: TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
      ),
      const SizedBox(
        height: 18,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {
                  registrationStore.setGenero("FEM");
                  registrationStore.nextPage();
                },
                child: Image.asset(
                  'assets/fem.png',
                  width: 150,
                ),
              ),
              Text(
                'Feminino',
                style: TextStyle(
                    fontSize: 22,
                    color: ColorsUtils.pinkGPrimary,
                    fontFamily: 'GeosansLight'),
              ),
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  registrationStore.setGenero("MASC");
                  registrationStore.nextPage();
                },
                child: Image.asset(
                  'assets/masc.png',
                  width: 150,
                ),
              ),
              Text(
                'Masculino',
                style: TextStyle(
                    fontSize: 22,
                    color: ColorsUtils.purpleGPrimary,
                    fontFamily: 'GeosansLight'),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

solicitaObjetivo() {
  return Column(
    children: [
      const Text(
        'Qual seu objetivo nutricional?',
        style: const TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
      ),
      const SizedBox(
        height: 18,
      ),
      Padding(
        padding: EdgeInsets.all(12),
        child: TextButton(
          onPressed: () {
            registrationStore.setObjetivo('Ganhar peso');
          },
          child: const Text(
            'Ganhar peso',
            style: TextStyle(
                fontFamily: 'GeosansLight',
                fontSize: 26,
                color: Colors.green,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(12),
        child: TextButton(
          onPressed: () {
            registrationStore.setObjetivo('Manter meu peso');
          },
          child: const Text(
            'Manter meu peso',
            style: TextStyle(
                fontFamily: 'GeosansLight',
                fontSize: 26,
                color: Colors.blue,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(12),
        child: TextButton(
          onPressed: () {
            registrationStore.setObjetivo('Perder peso');
          },
          child: const Text(
            'Perder peso',
            style: TextStyle(
                fontFamily: 'GeosansLight',
                fontSize: 26,
                color: Colors.red,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      const SizedBox(
        height: 28,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () => registrationStore.backPage(),
            child: const Text('voltar'),
          ),
          TextButton(
            onPressed: () {
              registrationStore.objetivoNutricional == null
                  ? _toast('Opss, escolha uma das opções acima')
                  : registrationStore.nextPage();
            },
            child: const Text('avançar'),
          ),
        ],
      )
    ],
  );
}

solicitaAtividade() {
  return Column(
    children: [
      const Text(
        'Quanto você pratica de atividades físicas diariamente?',
        style: const TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
      ),
      Row(children: [
        Image.asset('teste'),
        Text('${registrationStore.sliderAtividade}'),
        Image.asset('teste'),
      ],),
      const SizedBox(
        height: 18,
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
        child: const Text('avançar'),
      )
    ],
  );
}
