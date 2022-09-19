import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:realiza_nutri/database/firebase_database.dart';
import '../../src/utils/colors_utils.dart';
import 'components/app_bar.dart';
import 'my_profile_store.dart';

final profileStore = MyProfileStore();

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    profileStore.checkRegistery();


    return Scaffold(
        backgroundColor: ColorsUtils.greenPrimary,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(65),
          child: AppBarProfileWidget(
            title: 'Editar perfil',
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(children: [_test(),
              TextButton(
                onPressed: () {
                  FirebaseData.editRegister(
                    '${profileStore.name}',
                    '${profileStore.age}',
                    '${profileStore.weight}',
                    '${profileStore.height}',
                    '${profileStore.genre}',
                    '${profileStore.nutritionalGoal}',
                    '${profileStore.sliderAtividade}',
                  );
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                child: const Text('Gravar'),
              )
            ],),
          ),
        ));
  }

  _test() {
    return Column(children: [
      const Text(
        'Editar perfil',
        style: TextStyle(fontSize: 28, fontFamily: 'GeosansLight'),
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Image.asset(
          'assets/${profileStore.genre}.png',
          width: 128,
        ),
        Observer(builder: (BuildContext context) {
          return Text(
            '${profileStore.name?.split(' ').first}',
            overflow: TextOverflow.clip,
            style: const TextStyle(fontFamily: 'GeosansLight', fontSize: 32),
          );
        }),
      ]),
      const SizedBox(
        height: 12,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Observer(builder: (BuildContext context) {
                return Text.rich(TextSpan(
                    text: 'Idade: ',
                    style: const TextStyle(
                        fontFamily: 'GeosansLight', fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                          text: '${profileStore.age}',
                          style: const TextStyle(
                              fontSize: 22, fontFamily: 'GeosansLight')),
                    ]));
              }),
              const SizedBox(
                width: 12,
              ),
              IconButton(
                  onPressed: () {
                    editAge();
                  },
                  icon: Icon(
                    Icons.edit,
                    size: 18,
                  )),
            ],
          ),
          Observer(builder: (BuildContext context) {
            return Text.rich(TextSpan(
                text: 'Peso: ',
                style:
                    const TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
                children: <TextSpan>[
                  TextSpan(
                      text: '${profileStore.weight}',
                      style: const TextStyle(
                          fontSize: 22, fontFamily: 'GeosansLight')),
                ]));
          }),
          Observer(builder: (BuildContext context) {
            return Text.rich(TextSpan(
                text: 'Altura: ',
                style:
                    const TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
                children: <TextSpan>[
                  TextSpan(
                      text: '${profileStore.height}',
                      style: const TextStyle(
                          fontSize: 22, fontFamily: 'GeosansLight')),
                ]));
          }),
          Observer(builder: (BuildContext context) {
            return Text.rich(TextSpan(
                text: 'Objetivo Nutricional: ',
                style:
                    const TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
                children: <TextSpan>[
                  TextSpan(
                      text: '${profileStore.nutritionalGoal}',
                      style: const TextStyle(
                          fontSize: 22, fontFamily: 'GeosansLight')),
                ]));
          }),
          Observer(builder: (BuildContext context) {
            return Text.rich(TextSpan(
                text: 'Nível de Atividades Físicas: ',
                style:
                    const TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
                children: <TextSpan>[
                  TextSpan(
                      text: '${profileStore.sliderAtividade}',
                      style: const TextStyle(
                          fontSize: 22, fontFamily: 'GeosansLight')),
                ]));
          }),
        ],
      ),
      const SizedBox(
        height: 8,
      ),
    ]);
  }

  _bodyEditProfile() {
    return Column(children: [
      const SizedBox(
        height: 18,
      ),
      Row(
        children: const [
          SizedBox(
            width: 18,
          ),
          Text(
            'Nome',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'GeosansLight',
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
      TextField(
        onSubmitted: (text) {
          profileStore.setName(text);
        },
        decoration: InputDecoration(
            hintText: '${profileStore.name}',
            hintStyle: const TextStyle(fontFamily: 'GeosansLight')),
        controller: TextEditingController(),
        keyboardType: TextInputType.name,
      ),
      const SizedBox(
        height: 18,
      ),
      Row(
        children: const [
          SizedBox(
            width: 18,
          ),
          Text(
            'Idade',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'GeosansLight',
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
      TextField(
        onSubmitted: (text) {
          profileStore.setAge(text);
        },
        decoration: InputDecoration(
            hintText: '${profileStore.age}',
            hintStyle: const TextStyle(fontFamily: 'GeosansLight')),
        controller: TextEditingController(),
        keyboardType: TextInputType.number,
      ),
      const SizedBox(
        height: 18,
      ),
      Row(
        children: const [
          SizedBox(
            width: 18,
          ),
          Text(
            'Peso',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'GeosansLight',
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
      TextField(
        onSubmitted: (text) {
          profileStore.setWeight(text);
        },
        decoration: InputDecoration(
            hintText: '${profileStore.weight}',
            hintStyle: const TextStyle(fontFamily: 'GeosansLight')),
        controller: TextEditingController(),
        keyboardType: TextInputType.number,
      ),
      const SizedBox(
        height: 18,
      ),
      Row(
        children: const [
          SizedBox(
            width: 18,
          ),
          Text(
            'Altura',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'GeosansLight',
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
      TextField(
        onSubmitted: (text) {
          profileStore.setHeight(text);
        },
        decoration: InputDecoration(
            hintText: '${profileStore.height}',
            hintStyle: const TextStyle(fontFamily: 'GeosansLight')),
        controller: TextEditingController(),
        keyboardType: TextInputType.number,
      ),
      const SizedBox(
        height: 18,
      ),
      Row(
        children: const [
          SizedBox(
            width: 18,
          ),
          Text(
            'Objetivo Nutricional',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'GeosansLight',
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
      TextField(
        onSubmitted: (text) {
          profileStore.setObjective(text);
        },
        decoration: InputDecoration(
            hintText: '${profileStore.nutritionalGoal}',
            hintStyle: const TextStyle(fontFamily: 'GeosansLight')),
        controller: TextEditingController(),
        keyboardType: TextInputType.text,
      ),
      const SizedBox(
        height: 18,
      ),
      Row(
        children: const [
          SizedBox(
            width: 18,
          ),
          Text(
            'Pratica de Atividade Física (0 à 10)',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'GeosansLight',
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
      TextField(
        onSubmitted: (text) {
          int ativ = int.parse(text);
          profileStore.setAtividade(ativ);
        },
        decoration: InputDecoration(
            hintText: '${profileStore.sliderAtividade}',
            hintStyle: const TextStyle(fontFamily: 'GeosansLight')),
        controller: TextEditingController(),
        keyboardType: TextInputType.number,
      ),
    ]);
  }

  editAge() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Idade',
            style: TextStyle(
                fontFamily: 'GeosansLight', fontWeight: FontWeight.bold)),
        content: TextField(
          onChanged: (text) {
            //int age = int.parse(text);
            profileStore.setAge(text);
            print(text);
          },
          decoration: InputDecoration(
              hintText: '${profileStore.age}',
              hintStyle: const TextStyle(fontFamily: 'GeosansLight')),
          controller: TextEditingController(),
          keyboardType: TextInputType.number,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              profileStore.saveLocal();
              Navigator.pop(context, 'OK');
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
