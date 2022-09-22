// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shedule_your_consultation_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SheduleConsultationStore on _SheduleConsultationStore, Store {
  late final _$dateAtom =
      Atom(name: '_SheduleConsultationStore.date', context: context);

  @override
  String? get date {
    _$dateAtom.reportRead();
    return super.date;
  }

  @override
  set date(String? value) {
    _$dateAtom.reportWrite(value, super.date, () {
      super.date = value;
    });
  }

  late final _$setDateAsyncAction =
      AsyncAction('_SheduleConsultationStore.setDate', context: context);

  @override
  Future<void> setDate(String dataRecebida) {
    return _$setDateAsyncAction.run(() => super.setDate(dataRecebida));
  }

  @override
  String toString() {
    return '''
date: ${date}
    ''';
  }
}
