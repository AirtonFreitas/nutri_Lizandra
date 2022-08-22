// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegistrationStore on _RegistrationStore, Store {
  late final _$nameAtom =
      Atom(name: '_RegistrationStore.name', context: context);

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$idadeAtom =
      Atom(name: '_RegistrationStore.idade', context: context);

  @override
  String? get idade {
    _$idadeAtom.reportRead();
    return super.idade;
  }

  @override
  set idade(String? value) {
    _$idadeAtom.reportWrite(value, super.idade, () {
      super.idade = value;
    });
  }

  late final _$pesoAtom =
      Atom(name: '_RegistrationStore.peso', context: context);

  @override
  String? get peso {
    _$pesoAtom.reportRead();
    return super.peso;
  }

  @override
  set peso(String? value) {
    _$pesoAtom.reportWrite(value, super.peso, () {
      super.peso = value;
    });
  }

  late final _$alturaAtom =
      Atom(name: '_RegistrationStore.altura', context: context);

  @override
  String? get altura {
    _$alturaAtom.reportRead();
    return super.altura;
  }

  @override
  set altura(String? value) {
    _$alturaAtom.reportWrite(value, super.altura, () {
      super.altura = value;
    });
  }

  late final _$generoAtom =
      Atom(name: '_RegistrationStore.genero', context: context);

  @override
  String? get genero {
    _$generoAtom.reportRead();
    return super.genero;
  }

  @override
  set genero(String? value) {
    _$generoAtom.reportWrite(value, super.genero, () {
      super.genero = value;
    });
  }

  late final _$objetivoNutricionalAtom =
      Atom(name: '_RegistrationStore.objetivoNutricional', context: context);

  @override
  String? get objetivoNutricional {
    _$objetivoNutricionalAtom.reportRead();
    return super.objetivoNutricional;
  }

  @override
  set objetivoNutricional(String? value) {
    _$objetivoNutricionalAtom.reportWrite(value, super.objetivoNutricional, () {
      super.objetivoNutricional = value;
    });
  }

  late final _$atividadeFisicaAtom =
      Atom(name: '_RegistrationStore.atividadeFisica', context: context);

  @override
  String? get atividadeFisica {
    _$atividadeFisicaAtom.reportRead();
    return super.atividadeFisica;
  }

  @override
  set atividadeFisica(String? value) {
    _$atividadeFisicaAtom.reportWrite(value, super.atividadeFisica, () {
      super.atividadeFisica = value;
    });
  }

  late final _$pageActiveAtom =
      Atom(name: '_RegistrationStore.pageActive', context: context);

  @override
  int get pageActive {
    _$pageActiveAtom.reportRead();
    return super.pageActive;
  }

  @override
  set pageActive(int value) {
    _$pageActiveAtom.reportWrite(value, super.pageActive, () {
      super.pageActive = value;
    });
  }

  late final _$nextPageAsyncAction =
      AsyncAction('_RegistrationStore.nextPage', context: context);

  @override
  Future<void> nextPage() {
    return _$nextPageAsyncAction.run(() => super.nextPage());
  }

  late final _$setNameAsyncAction =
      AsyncAction('_RegistrationStore.setName', context: context);

  @override
  Future<void> setName(String nomeRecebido) {
    return _$setNameAsyncAction.run(() => super.setName(nomeRecebido));
  }

  late final _$setIdadeAsyncAction =
      AsyncAction('_RegistrationStore.setIdade', context: context);

  @override
  Future<void> setIdade(String idadeRecebida) {
    return _$setIdadeAsyncAction.run(() => super.setIdade(idadeRecebida));
  }

  late final _$setPesoAsyncAction =
      AsyncAction('_RegistrationStore.setPeso', context: context);

  @override
  Future<void> setPeso(String pesoRecebido) {
    return _$setPesoAsyncAction.run(() => super.setPeso(pesoRecebido));
  }

  late final _$setAlturaAsyncAction =
      AsyncAction('_RegistrationStore.setAltura', context: context);

  @override
  Future<void> setAltura(String alturaRecebida) {
    return _$setAlturaAsyncAction.run(() => super.setAltura(alturaRecebida));
  }

  late final _$setGeneroAsyncAction =
      AsyncAction('_RegistrationStore.setGenero', context: context);

  @override
  Future<void> setGenero(String generoRecebido) {
    return _$setGeneroAsyncAction.run(() => super.setGenero(generoRecebido));
  }

  late final _$setObjetivoAsyncAction =
      AsyncAction('_RegistrationStore.setObjetivo', context: context);

  @override
  Future<void> setObjetivo(String objetivoRecebido) {
    return _$setObjetivoAsyncAction
        .run(() => super.setObjetivo(objetivoRecebido));
  }

  late final _$setAtividadeAsyncAction =
      AsyncAction('_RegistrationStore.setAtividade', context: context);

  @override
  Future<void> setAtividade(String atividadeRecebida) {
    return _$setAtividadeAsyncAction
        .run(() => super.setAtividade(atividadeRecebida));
  }

  @override
  String toString() {
    return '''
name: ${name},
idade: ${idade},
peso: ${peso},
altura: ${altura},
genero: ${genero},
objetivoNutricional: ${objetivoNutricional},
atividadeFisica: ${atividadeFisica},
pageActive: ${pageActive}
    ''';
  }
}
