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

  late final _$ageAtom = Atom(name: '_RegistrationStore.age', context: context);

  @override
  String? get age {
    _$ageAtom.reportRead();
    return super.age;
  }

  @override
  set age(String? value) {
    _$ageAtom.reportWrite(value, super.age, () {
      super.age = value;
    });
  }

  late final _$weightAtom =
      Atom(name: '_RegistrationStore.weight', context: context);

  @override
  String? get weight {
    _$weightAtom.reportRead();
    return super.weight;
  }

  @override
  set weight(String? value) {
    _$weightAtom.reportWrite(value, super.weight, () {
      super.weight = value;
    });
  }

  late final _$heightAtom =
      Atom(name: '_RegistrationStore.height', context: context);

  @override
  String? get height {
    _$heightAtom.reportRead();
    return super.height;
  }

  @override
  set height(String? value) {
    _$heightAtom.reportWrite(value, super.height, () {
      super.height = value;
    });
  }

  late final _$genreAtom =
      Atom(name: '_RegistrationStore.genre', context: context);

  @override
  String? get genre {
    _$genreAtom.reportRead();
    return super.genre;
  }

  @override
  set genre(String? value) {
    _$genreAtom.reportWrite(value, super.genre, () {
      super.genre = value;
    });
  }

  late final _$nutritionalGoalAtom =
      Atom(name: '_RegistrationStore.nutritionalGoal', context: context);

  @override
  String? get nutritionalGoal {
    _$nutritionalGoalAtom.reportRead();
    return super.nutritionalGoal;
  }

  @override
  set nutritionalGoal(String? value) {
    _$nutritionalGoalAtom.reportWrite(value, super.nutritionalGoal, () {
      super.nutritionalGoal = value;
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

  late final _$sliderAtividadeAtom =
      Atom(name: '_RegistrationStore.sliderAtividade', context: context);

  @override
  int get sliderAtividade {
    _$sliderAtividadeAtom.reportRead();
    return super.sliderAtividade;
  }

  @override
  set sliderAtividade(int value) {
    _$sliderAtividadeAtom.reportWrite(value, super.sliderAtividade, () {
      super.sliderAtividade = value;
    });
  }

  late final _$nextPageAsyncAction =
      AsyncAction('_RegistrationStore.nextPage', context: context);

  @override
  Future<void> nextPage() {
    return _$nextPageAsyncAction.run(() => super.nextPage());
  }

  late final _$backPageAsyncAction =
      AsyncAction('_RegistrationStore.backPage', context: context);

  @override
  Future<void> backPage() {
    return _$backPageAsyncAction.run(() => super.backPage());
  }

  late final _$setNameAsyncAction =
      AsyncAction('_RegistrationStore.setName', context: context);

  @override
  Future<void> setName(String nomeRecebido) {
    return _$setNameAsyncAction.run(() => super.setName(nomeRecebido));
  }

  late final _$setAtividademinAsyncAction =
      AsyncAction('_RegistrationStore.setAtividademin', context: context);

  @override
  Future<void> setAtividademin() {
    return _$setAtividademinAsyncAction.run(() => super.setAtividademin());
  }

  late final _$setAtividademaxAsyncAction =
      AsyncAction('_RegistrationStore.setAtividademax', context: context);

  @override
  Future<void> setAtividademax() {
    return _$setAtividademaxAsyncAction.run(() => super.setAtividademax());
  }

  late final _$setAgeAsyncAction =
      AsyncAction('_RegistrationStore.setAge', context: context);

  @override
  Future<void> setAge(String idadeRecebida) {
    return _$setAgeAsyncAction.run(() => super.setAge(idadeRecebida));
  }

  late final _$setWeightAsyncAction =
      AsyncAction('_RegistrationStore.setWeight', context: context);

  @override
  Future<void> setWeight(String pesoRecebido) {
    return _$setWeightAsyncAction.run(() => super.setWeight(pesoRecebido));
  }

  late final _$setHeightAsyncAction =
      AsyncAction('_RegistrationStore.setHeight', context: context);

  @override
  Future<void> setHeight(String alturaRecebida) {
    return _$setHeightAsyncAction.run(() => super.setHeight(alturaRecebida));
  }

  late final _$setGenreAsyncAction =
      AsyncAction('_RegistrationStore.setGenre', context: context);

  @override
  Future<void> setGenre(String generoRecebido) {
    return _$setGenreAsyncAction.run(() => super.setGenre(generoRecebido));
  }

  late final _$setObjectiveAsyncAction =
      AsyncAction('_RegistrationStore.setObjective', context: context);

  @override
  Future<void> setObjective(String objetivoRecebido) {
    return _$setObjectiveAsyncAction
        .run(() => super.setObjective(objetivoRecebido));
  }

  late final _$saveLocalAsyncAction =
      AsyncAction('_RegistrationStore.saveLocal', context: context);

  @override
  Future<void> saveLocal() {
    return _$saveLocalAsyncAction.run(() => super.saveLocal());
  }

  @override
  String toString() {
    return '''
name: ${name},
age: ${age},
weight: ${weight},
height: ${height},
genre: ${genre},
nutritionalGoal: ${nutritionalGoal},
pageActive: ${pageActive},
sliderAtividade: ${sliderAtividade}
    ''';
  }
}
