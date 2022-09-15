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

Widget solicitaNome() {
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
              borderRadius: BorderRadius.all(Radius.circular(14)),
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

Widget solicitaIdade() {
  return Column(
    children: [
      Observer(builder: (BuildContext context) {
        return Text(
          '${registrationStore.name?.split(' ')[0]}, qual sua idade?',
          style: const TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
        );
      }),
      const SizedBox(
        height: 18,
      ),
      TextField(
        onChanged: (text) {
          registrationStore.setAge(text);
        },
        controller: TextEditingController(),
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0.2),
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0.2),
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
        ),
      ),
      const SizedBox(
        height: 12,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              registrationStore.backPage();
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: const Text('voltar'),
          ),
          TextButton(
            onPressed: () {
              registrationStore.age == null
                  ? _toast('Favor preencher sua idade')
                  : registrationStore.nextPage();
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: const Text('avançar'),
          ),
        ],
      ),
    ],
  );
}

Widget solicitaPeso() {
  return Column(
    children: [
      Observer(builder: (BuildContext context) {
        return Text(
          '${registrationStore.name?.split(' ')[0]}, qual seu peso?',
          style: const TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
        );
      }),
      const SizedBox(
        height: 18,
      ),
      TextField(
        onChanged: (text) {
          registrationStore.setWeight(text);
        },
        controller: TextEditingController(),
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0.2),
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0.2),
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
        ),
        keyboardType: TextInputType.number,
      ),
      const SizedBox(
        height: 12,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              registrationStore.backPage();
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: const Text('voltar'),
          ),
          TextButton(
            onPressed: () {
              registrationStore.weight == null
                  ? _toast('Favor preencher seu peso')
                  : registrationStore.nextPage();
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: const Text('avançar'),
          )
        ],
      ),
    ],
  );
}

Widget solicitaAltura() {
  return Column(
    children: [
      Observer(builder: (BuildContext context) {
        return Text(
          '${registrationStore.name?.split(' ')[0]}, qual sua altura?',
          style: const TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
        );
      }),
      const SizedBox(
        height: 18,
      ),
      TextField(
        onChanged: (text) {
          registrationStore.setHeight(text);
        },
        controller: TextEditingController(),
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0.2),
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0.2),
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
        ),
        keyboardType: TextInputType.number,
      ),
      const SizedBox(
        height: 12,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              registrationStore.backPage();
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: const Text('voltar'),
          ),
          TextButton(
            onPressed: () {
              registrationStore.height == null
                  ? _toast('Favor preencher sua altura')
                  : registrationStore.nextPage();
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: const Text('avançar'),
          )
        ],
      ),
    ],
  );
}

Widget solicitaGen() {
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
                  registrationStore.setGenre("fem");
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
                  registrationStore.setGenre("masc");
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
      const SizedBox(
        height: 32,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              registrationStore.backPage();
            },
            child: const Text('voltar'),
          ),
          TextButton(
            onPressed: () {
              registrationStore.setGenre("uni");
              registrationStore.nextPage();
            },
            child: const Text('prefiro \n não informar',
                textAlign: TextAlign.center),
          )
        ],
      ),
    ],
  );
}

Widget solicitaObjetivo() {
  return Column(
    children: [
      Observer(builder: (BuildContext context) {
        return Text(
          '${registrationStore.name?.split(' ')[0]}, qual sueu objetivo nutricional?',
          style: const TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
        );
      }),
      const SizedBox(
        height: 18,
      ),
      Padding(
        padding: const EdgeInsets.all(12),
        child: TextButton(
          onPressed: () {
            registrationStore.setObjective('Ganhar peso');
            registrationStore.nextPage();
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
        padding: const EdgeInsets.all(12),
        child: TextButton(
          onPressed: () {
            registrationStore.setObjective('Manter meu peso');
            registrationStore.nextPage();
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
        padding: const EdgeInsets.all(12),
        child: TextButton(
          onPressed: () {
            registrationStore.setObjective('Perder peso');
            registrationStore.nextPage();
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
              registrationStore.nutritionalGoal == null
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
class solicitaAtividade extends StatelessWidget {
  const solicitaAtividade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'De 0 à 10, informe o quando você pratica de exercícios',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'GeosansLight', fontSize: 22),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  registrationStore.setAtividademin();
                },
                icon: const Icon(
                  Icons.navigate_before,
                  size: 32,
                )),
            Observer(builder: (BuildContext context) {
              return Center(
                child: Text(
                  '${registrationStore.sliderAtividade}',
                  style:
                  TextStyle(fontSize: 62, color: ColorsUtils.greenSecondary),
                ),
              );
            }),
            IconButton(
                onPressed: () {
                  registrationStore.setAtividademax();
                },
                icon: const Icon(
                  Icons.navigate_next,
                  size: 32,
                )),
          ],
        ),
        const SizedBox(
          height: 32,
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
                registrationStore.sliderAtividade == null
                    ? _toast('Favor preencher')
                    : FirebaseData.saveRegister(
                  '${registrationStore.name}',
                  '${registrationStore.age}',
                  '${registrationStore.weight}',
                  '${registrationStore.height}',
                  '${registrationStore.genre}',
                  '${registrationStore.nutritionalGoal}',
                  '${registrationStore.sliderAtividade}',
                );
                registrationStore.saveLocal();
                Navigator.pushNamed(context, 'home');
              },
              child: const Text('finalizar'),
            )
          ],
        )
      ],
    );
  }
}