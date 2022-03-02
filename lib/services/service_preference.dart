// ignore_for_file: prefer_const_declarations

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceService extends GetxService {
  static late SharedPreferences _preferences;

  static final _keyToken = 'token';

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
    return _preferences;
  }

  static Future clear() async {
    _preferences.clear();
  }

  static Future setToken(String token) async {
    await _preferences.setString(_keyToken, token);
  }

  static String? getToken() {
    final data = _preferences.getString(_keyToken);

    if (data != null) return data;
    return null;
  }
}
