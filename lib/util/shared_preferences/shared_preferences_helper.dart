import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static late final SharedPreferences _sharedPreferences;

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setValue(String key, Object value) async {
    if (value is String) {
      return _sharedPreferences.setString(key, value);
    }
    if (value is bool) {
      return _sharedPreferences.setBool(key, value);
    }
    if (value is double) {
      return _sharedPreferences.setDouble(key, value);
    }
    if (value is int) {
      return _sharedPreferences.setInt(key, value);
    }
    if (value is List<String>) {
      return _sharedPreferences.setStringList(key, value);
    }

    throw Exception('Unsupported type');
  }

  static T? getValue<T extends Object>(String key) {
    final value = _sharedPreferences.get(key);

    if (value == null) {
      return null;
    } else {
      return value as T;
    }
  }
}
