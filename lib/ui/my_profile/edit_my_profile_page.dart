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
            child: Column(
              children: [
                _editProfile(),
                const SizedBox(
                  height: 12,
                ),
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
                    profileStore.saveLocal();
                    FocusManager.instance.primaryFocus?.unfocus();
                    Navigator.pushNamed(context, 'home');
                  },
                  child: const Text('Gravar'),
                )
              ],
            ),
          ),
        ));
  }

  Widget _editProfile() {
    return Column(children: [
      const Text(
        'Editar perfil',
        style: TextStyle(fontSize: 28, fontFamily: 'GeosansLight'),
      ),
      const SizedBox(height: 12,),
      Observer(builder: (BuildContext context) {
        return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Stack(
            children: [
              Image.asset(
                'assets/${profileStore.genre}.png',
                width: 100,
              ),
              Positioned(right:1, top: -15,
                child: IconButton(
                    onPressed: () {
                      _editGen();
                    },
                    icon: const Icon(
                      Icons.edit,
                      size: 18,
                    )),
              ),
            ],
          ),
          Observer(builder: (BuildContext context) {
            return Text(
              '${profileStore.name}',
              overflow: TextOverflow.clip,
              style: const TextStyle(fontFamily: 'GeosansLight', fontSize: 18),
            );
          }),
          IconButton(
              onPressed: () {
                _editName();
              },
              icon: const Icon(
                Icons.edit,
                size: 18,
              )),
        ]);
      }),
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
                    _editAge();
                  },
                  icon: const Icon(
                    Icons.edit,
                    size: 18,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Observer(builder: (BuildContext context) {
                return Text.rich(TextSpan(
                    text: 'Peso: ',
                    style: const TextStyle(
                        fontFamily: 'GeosansLight', fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                          text: '${profileStore.weight}',
                          style: const TextStyle(
                              fontSize: 22, fontFamily: 'GeosansLight')),
                    ]));
              }),
              const SizedBox(
                width: 12,
              ),
              IconButton(
                  onPressed: () {
                    _editWeight();
                  },
                  icon: const Icon(
                    Icons.edit,
                    size: 18,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Observer(builder: (BuildContext context) {
                return Text.rich(TextSpan(
                    text: 'Altura: ',
                    style: const TextStyle(
                        fontFamily: 'GeosansLight', fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                          text: '${profileStore.height}',
                          style: const TextStyle(
                              fontSize: 22, fontFamily: 'GeosansLight')),
                    ]));
              }),
              const SizedBox(
                width: 12,
              ),
              IconButton(
                  onPressed: () {
                    _editHeight();
                  },
                  icon: const Icon(
                    Icons.edit,
                    size: 18,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Observer(builder: (BuildContext context) {
                return Text.rich(TextSpan(
                    text: 'Objetivo Nutricional: ',
                    style: const TextStyle(
                        fontFamily: 'GeosansLight', fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                          text: '${profileStore.nutritionalGoal}',
                          style: const TextStyle(
                              fontSize: 22, fontFamily: 'GeosansLight')),
                    ]));
              }),
              const SizedBox(
                width: 12,
              ),
              IconButton(
                  onPressed: () {
                    _editNutritionalGoal();
                  },
                  icon: const Icon(
                    Icons.edit,
                    size: 18,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Observer(builder: (BuildContext context) {
                return Text.rich(TextSpan(
                    text: 'Nível de Atividades Físicas: ',
                    style: const TextStyle(
                        fontFamily: 'GeosansLight', fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                          text: '${profileStore.sliderAtividade}',
                          style: const TextStyle(
                              fontSize: 22, fontFamily: 'GeosansLight')),
                    ]));
              }),
              const SizedBox(
                width: 12,
              ),
              IconButton(
                  onPressed: () {
                    _editAtividade();
                  },
                  icon: const Icon(
                    Icons.edit,
                    size: 18,
                  )),
            ],
          ),
        ],
      ),
      const SizedBox(
        height: 8,
      ),
    ]);
  }

  _editName() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Nome',
            style: TextStyle(
                fontFamily: 'GeosansLight', fontWeight: FontWeight.bold)),
        content: TextField(
          onChanged: (text) {
            profileStore.setName(text);
          },
          decoration: InputDecoration(
              hintText: '${profileStore.name}',
              hintStyle: const TextStyle(fontFamily: 'GeosansLight')),
          controller: TextEditingController(),
          keyboardType: TextInputType.name,
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

  _editGen() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Genero',
            style: TextStyle(
                fontFamily: 'GeosansLight', fontWeight: FontWeight.bold)),
        content: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          InkWell(child: Image.asset('assets/masc.png',width: 100,),onTap: (){
            profileStore.setGenre('masc');
            Navigator.pop(context, 'ok');
          },),
          InkWell(child: Image.asset('assets/fem.png',width: 100,),onTap: (){
            profileStore.setGenre('fem');
            Navigator.pop(context, 'ok');
    })
        ],),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              profileStore.setGenre('uni');
              profileStore.saveLocal();
              Navigator.pop(context, 'ok');
            },
            child: const Text('prefiro \n não informar',textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }

  _editAge() {
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

  _editWeight() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Peso',
            style: TextStyle(
                fontFamily: 'GeosansLight', fontWeight: FontWeight.bold)),
        content: TextField(
          onChanged: (text) {
            //int age = int.parse(text);
            profileStore.setWeight(text);
          },
          decoration: InputDecoration(
              hintText: '${profileStore.weight}',
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

  _editHeight() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Altura',
            style: TextStyle(
                fontFamily: 'GeosansLight', fontWeight: FontWeight.bold)),
        content: TextField(
          onChanged: (text) {
            //int age = int.parse(text);
            profileStore.setHeight(text);
          },
          decoration: InputDecoration(
              hintText: '${profileStore.height}',
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

  _editNutritionalGoal() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Objetivo Nutricional',
            style: TextStyle(
                fontFamily: 'GeosansLight', fontWeight: FontWeight.bold)),
        content: TextField(
          onChanged: (text) {
            //int age = int.parse(text);
            profileStore.setObjective(text);
          },
          decoration: InputDecoration(
              hintText: '${profileStore.nutritionalGoal}',
              hintStyle: const TextStyle(fontFamily: 'GeosansLight')),
          controller: TextEditingController(),
          keyboardType: TextInputType.text,
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

  _editAtividade() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Nível de Atividades Físicas (0 à 10)',
            style: TextStyle(
                fontFamily: 'GeosansLight', fontWeight: FontWeight.bold)),
        content: TextField(
          onChanged: (text) {
            int ativ = int.parse(text);
            profileStore.setAtividade(ativ);
          },
          decoration: InputDecoration(
              hintText: '${profileStore.sliderAtividade}',
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
