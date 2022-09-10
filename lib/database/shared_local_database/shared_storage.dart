import 'package:realiza_nutri/database/shared_local_database/local_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageShared implements LocalStorage {
  @override
  Future delete(String key) async {
    var shared = await SharedPreferences.getInstance();
    shared.remove(key);
  }

  @override
  Future get(String key) async {
    var shared = await SharedPreferences.getInstance();
    return shared.get(key);
  }

  @override
  Future put(String key, value) async {
    var shared = await SharedPreferences.getInstance();

    if (value is bool) {
      shared.setBool(key, value);
    } else if (value is int) {
      shared.setInt(key, value);
    } else if (value is double) {
      shared.setDouble(key, value);
    } else if (value is List<String>) {
      shared.setStringList(key, value);
    } else {
      shared.setString(key, value);
    }
  }
}
