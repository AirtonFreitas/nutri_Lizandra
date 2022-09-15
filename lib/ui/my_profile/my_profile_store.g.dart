// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_profile_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MyProfileStore on _MyProfileStore, Store {
  late final _$registredAtom =
      Atom(name: '_MyProfileStore.registred', context: context);

  @override
  bool get registred {
    _$registredAtom.reportRead();
    return super.registred;
  }

  @override
  set registred(bool value) {
    _$registredAtom.reportWrite(value, super.registred, () {
      super.registred = value;
    });
  }

  late final _$nameAtom = Atom(name: '_MyProfileStore.name', context: context);

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

  late final _$ageAtom = Atom(name: '_MyProfileStore.age', context: context);

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
      Atom(name: '_MyProfileStore.weight', context: context);

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
      Atom(name: '_MyProfileStore.height', context: context);

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
      Atom(name: '_MyProfileStore.genre', context: context);

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
      Atom(name: '_MyProfileStore.nutritionalGoal', context: context);

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

  late final _$imcAtom = Atom(name: '_MyProfileStore.imc', context: context);

  @override
  double? get imc {
    _$imcAtom.reportRead();
    return super.imc;
  }

  @override
  set imc(double? value) {
    _$imcAtom.reportWrite(value, super.imc, () {
      super.imc = value;
    });
  }

  late final _$pageActiveAtom =
      Atom(name: '_MyProfileStore.pageActive', context: context);

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
      Atom(name: '_MyProfileStore.sliderAtividade', context: context);

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

  late final _$loadingAtom =
      Atom(name: '_MyProfileStore.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$checkRegisteryAsyncAction =
      AsyncAction('_MyProfileStore.checkRegistery', context: context);

  @override
  Future<void> checkRegistery() {
    return _$checkRegisteryAsyncAction.run(() => super.checkRegistery());
  }

  @override
  String toString() {
    return '''
registred: ${registred},
name: ${name},
age: ${age},
weight: ${weight},
height: ${height},
genre: ${genre},
nutritionalGoal: ${nutritionalGoal},
imc: ${imc},
pageActive: ${pageActive},
sliderAtividade: ${sliderAtividade},
loading: ${loading}
    ''';
  }
}
