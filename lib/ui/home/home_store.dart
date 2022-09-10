import 'package:mobx/mobx.dart';
import 'package:realiza_nutri/database/shared_local_database/shared_storage.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {

@observable
bool registred = false;

@observable
String name = '';

@action
Future<void> checkRegistery() async {
  LocalStorageShared storage = LocalStorageShared();
  final registery = await storage.get("registred");
  final nameStorage = await storage.get("name");
  registred = registery;
  name = nameStorage;
}

}