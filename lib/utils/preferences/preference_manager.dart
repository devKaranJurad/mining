
import 'package:shared_preferences/shared_preferences.dart';

class AppPreference {
  static final AppPreference _appPreference = AppPreference._internal();

  factory AppPreference() {
    return _appPreference;
  }

  AppPreference._internal();

  late SharedPreferences _preferences;

  Future<void> initialAppPreference() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future setInt(String key, int value) async {
    await _preferences.setInt(key, value);
  }

  int getInt(String key, {int defValue = 0}) {
    return _preferences.getInt(key) != null
        ? (_preferences.getInt(key) ?? 0)
        : defValue;
  }

  Future setString(String key, String value) async {
    await _preferences.setString(key, value);
  }

  String getString(String key, {String defValue = ''}) {
    return _preferences.getString(key) != null
        ? (_preferences.getString(key) ?? '')
        : defValue;
  }

  Future setBool(String key, bool value) async {
    await _preferences.setBool(key, value);
  }

  bool getBool(String key, {bool defValue = false}) {
    return _preferences.getBool(key) ?? defValue;
  }

  Future setStringList(String key, List<String> value) async {
    await _preferences.setStringList(key, value);
  }

  List<String> getStringList(String key, {List<String> defValue = const []}) {
    return _preferences.getStringList(key) ?? defValue;
  }

  Future<void> clearSharedPreferences() async {
    await _preferences.clear();
  }

/*  Future<void> removeUserData() async{
    await _preferences.remove(PreferencesKey.isLogin);
  }*/
}
