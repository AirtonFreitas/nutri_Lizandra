import 'dart:async';

import 'package:mobx/mobx.dart';

import '../../database/shared_local_database/shared_storage.dart';

part 'my_profile_store.g.dart';

class MyProfileStore = _MyProfileStore with _$MyProfileStore;

abstract class _MyProfileStore with Store {
  @observable
  bool registred = false;

  @observable
  String? name;

  @observable
  String? age;

  @observable
  String? weight;

  @observable
  String? height;

  @observable
  String? genre;

  @observable
  String? nutritionalGoal;

  @observable
  double? imc;

  @observable
  int pageActive = 0;

  @observable
  int? sliderAtividade;

  @observable
  bool loading = true;


  @action
  Future<void> checkRegistery() async {
    LocalStorageShared storage = LocalStorageShared();
    final registery = await storage.get("registred");
    final nameStorage = await storage.get("name");
    final ageStorage = await storage.get('age');
    final weightStorage = await storage.get('weight');
    final heightStorage = await storage.get('height');
    final genreStorage = await storage.get('genre');
    final nutritionalGoalStorage = await storage.get('nutritionalGoal');
    final sliderActivityStorage = await storage.get('sliderAtividade');
    registred = registery;
    name = nameStorage;
    age = ageStorage;
    weight = weightStorage;
    height = heightStorage;
    genre = genreStorage;
    nutritionalGoal = nutritionalGoalStorage;
    sliderAtividade = sliderActivityStorage;

    double peso = double.parse(weightStorage.replaceAll(',', '.'));
    double altura = double.parse(heightStorage.replaceAll(',', '.'));

    imc =  peso / altura / altura;
    Timer(const Duration(milliseconds: 300), () { loading = false; });
  }

  @action
  Future<void> setName(String nomeRecebido) async {
    name = nomeRecebido;
  }

  @action
  Future<void> setAtividade(int atividade) async {
    sliderAtividade = atividade;
  }

  @action
  Future<void> setAge(String idadeRecebida) async {
    age = idadeRecebida;
  }

  @action
  Future<void> setWeight(String pesoRecebido) async {
    weight = pesoRecebido;
  }

  @action
  Future<void> setHeight(String alturaRecebida) async {
    height = alturaRecebida;
  }

  @action
  Future<void> setGenre(String generoRecebido) async {
    genre = generoRecebido;
  }

  @action
  Future<void> setObjective(String objetivoRecebido) async {
    nutritionalGoal = objetivoRecebido;
  }

  @action
  Future<void> saveLocal() async {
    LocalStorageShared storage = LocalStorageShared();
    await storage.put('registred', true);
    storage.put('name', name);
    storage.put('age', age);
    storage.put('weight', weight);
    storage.put('height', height);
    storage.put('genre', genre);
    storage.put('nutritionalGoal', nutritionalGoal);
    storage.put('sliderAtividade', sliderAtividade);
  }

}
