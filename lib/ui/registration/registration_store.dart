import 'package:mobx/mobx.dart';
part 'registration_store.g.dart';

class RegistrationStore = _RegistrationStore with _$RegistrationStore;

abstract class _RegistrationStore with Store {
  @observable
  String? name;

  @observable
  String? idade;

  @observable
  String? peso;

  @observable
  String? altura;

  @observable
  String? genero;

  @observable
  String? objetivoNutricional;

  @observable
  String? atividadeFisica;

  @observable
  int pageActive = 6;

  @observable
  double sliderAtividade = 0;

  @action
  Future<void> nextPage() async {
    pageActive++;
    print(pageActive);
  }

  @action
  Future<void> backPage() async {
    pageActive--;
    print(pageActive);
  }

  @action
  Future<void> setName(String nomeRecebido) async {
    name = nomeRecebido;
  }

  @action
  Future<void> setSliderAtividade(double slider) async {
    sliderAtividade = slider;
    print(sliderAtividade);
    print(slider);
  }

  @action
  Future<void> setIdade(String idadeRecebida) async {
    idade = idadeRecebida;
  }

  @action
  Future<void> setPeso(String pesoRecebido) async {
    peso = pesoRecebido;
  }

  @action
  Future<void> setAltura(String alturaRecebida) async {
    altura = alturaRecebida;
  }

  @action
  Future<void> setGenero(String generoRecebido) async {
    genero = generoRecebido;
  }

  @action
  Future<void> setObjetivo(String objetivoRecebido) async {
    objetivoNutricional = objetivoRecebido;
  }

  @action
  Future<void> setAtividade(String atividadeRecebida) async {
    atividadeFisica = atividadeRecebida;
  }
}