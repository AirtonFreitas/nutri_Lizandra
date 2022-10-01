import 'package:mobx/mobx.dart';

part 'revenues_coffee_store.g.dart';

class RevenuesCoffeStore = _RevenuesCoffeStore with _$RevenuesCoffeStore;

abstract class _RevenuesCoffeStore with Store{
  @observable
  int bodyRevenueSelected = 0;

  @action
  Future<void> setRevenue(int revenueReceived) async{
    bodyRevenueSelected = revenueReceived;
  }
}