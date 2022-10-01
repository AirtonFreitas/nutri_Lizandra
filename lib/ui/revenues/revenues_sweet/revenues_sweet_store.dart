import 'package:mobx/mobx.dart';

part 'revenues_sweet_store.g.dart';

class RevenuesSweetStore = _RevenuesSweetStore with _$RevenuesSweetStore;

abstract class _RevenuesSweetStore with Store{
  @observable
  int bodyRevenueSelected = 0;

  @action
  Future<void> setRevenue(int revenueReceived) async{
    bodyRevenueSelected = revenueReceived;
  }
}