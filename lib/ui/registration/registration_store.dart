import 'package:mobx/mobx.dart';
import 'package:realiza_nutri/database/shared_local_database/shared_storage.dart';

part 'registration_store.g.dart';

class RegistrationStore = _RegistrationStore with _$RegistrationStore;

abstract class _RegistrationStore with Store {
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
  String? email;

  @observable
  int pageActive = 0;

  @observable
  int sliderAtividade = 0;

  @action
  Future<void> nextPage() async {
    pageActive++;
  }

  @action
  Future<void> backPage() async {
    pageActive--;
  }

  @action
  Future<void> setName(String nomeRecebido) async {
    name = nomeRecebido;
  }

  @action
  Future<void> setAtividademin() async {
    if (sliderAtividade > 0) {sliderAtividade--;
    }
  }

  @action
  Future<void> setAtividademax() async {
    if (sliderAtividade < 10) {sliderAtividade++;}
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
  Future<void> setEmail(String emasilRecebido) async {
    email = emasilRecebido;
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
    storage.put('email', email);
  }
}
