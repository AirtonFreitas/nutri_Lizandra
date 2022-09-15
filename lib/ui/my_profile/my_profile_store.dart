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
  int sliderAtividade = 0;

  @observable
  bool loading = true;


  @action
  Future<void> checkRegistery() async {
    LocalStorageShared storage = LocalStorageShared();
    final registery = await storage.get("registred");
    final nameStorage = await storage.get("name");
    final ageStorage = await storage.get('age');
    String weightStorage = await storage.get('weight');
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
}
