import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefManager {
  static final SharedPrefManager _instance = SharedPrefManager._internal();
  late SharedPreferences _preferences;

  factory SharedPrefManager() {
    return _instance;
  }

  SharedPrefManager._internal();

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<void> setString(String key, String value) async {
    await _preferences.setString(key, value);
  }

  String? getString(String key) {
    return _preferences.getString(key);
  }

  // // Set a boolean value
  // Future<void> setBool(String key, bool value) async {
  //   await _preferences.setBool(key, value);
  // }

  // // Get a boolean value
  // bool? getBool(String key) {
  //   return _preferences.getBool(key);
  // }

  // // Set an integer value
  // Future<void> setInt(String key, int value) async {
  //   await _preferences.setInt(key, value);
  // }

  // // Get an integer value
  // int? getInt(String key) {
  //   return _preferences.getInt(key);
  // }

  // // Set a double value
  // Future<void> setDouble(String key, double value) async {
  //   await _preferences.setDouble(key, value);
  // }

  // // Get a double value
  // double? getDouble(String key) {
  //   return _preferences.getDouble(key);
  // }

  // // Remove a value
  // Future<void> remove(String key) async {
  //   await _preferences.remove(key);
  // }

  // Clear all values
  // Future<void> clear() async {
  //   await _preferences.clear();
  // }
}
