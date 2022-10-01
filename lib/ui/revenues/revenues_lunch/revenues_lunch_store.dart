import 'package:mobx/mobx.dart';

part 'revenues_lunch_store.g.dart';

class RevenuesLunchStore = _RevenuesLunchStore with _$RevenuesLunchStore;

abstract class _RevenuesLunchStore with Store{
  @observable
  int bodyRevenueSelected = 0;

  @action
  Future<void> setRevenue(int revenueReceived) async{
    bodyRevenueSelected = revenueReceived;
  }
}