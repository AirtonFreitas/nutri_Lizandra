import 'package:mobx/mobx.dart';

part 'revenues_food_store.g.dart';

class RevenuesFoodStore = _RevenuesFoodStore with _$RevenuesFoodStore;

abstract class _RevenuesFoodStore with Store{
  @observable
  int bodyRevenueSelected = 0;

  @action
  Future<void> setRevenue(int revenueReceived) async{
    bodyRevenueSelected = revenueReceived;
  }
}