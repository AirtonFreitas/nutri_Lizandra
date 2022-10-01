// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revenues_lunch_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RevenuesLunchStore on _RevenuesLunchStore, Store {
  late final _$bodyRevenueSelectedAtom =
      Atom(name: '_RevenuesLunchStore.bodyRevenueSelected', context: context);

  @override
  int get bodyRevenueSelected {
    _$bodyRevenueSelectedAtom.reportRead();
    return super.bodyRevenueSelected;
  }

  @override
  set bodyRevenueSelected(int value) {
    _$bodyRevenueSelectedAtom.reportWrite(value, super.bodyRevenueSelected, () {
      super.bodyRevenueSelected = value;
    });
  }

  late final _$setRevenueAsyncAction =
      AsyncAction('_RevenuesLunchStore.setRevenue', context: context);

  @override
  Future<void> setRevenue(int revenueReceived) {
    return _$setRevenueAsyncAction.run(() => super.setRevenue(revenueReceived));
  }

  @override
  String toString() {
    return '''
bodyRevenueSelected: ${bodyRevenueSelected}
    ''';
  }
}
