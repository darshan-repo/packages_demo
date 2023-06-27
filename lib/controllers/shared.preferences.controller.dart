import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';


class SharedPref {
  static SharedPreferences? pref;
  static Future<SharedPreferences> get init async =>
      pref = await SharedPreferences.getInstance();

  static set setIsLogin(bool data) => pref!.setBool(PrefKey.isLogin, data);

  static bool get getIsLogin => pref!.getBool(PrefKey.isLogin) ?? false;
}

class PrefKey {
  static const isLogin = 'Login';
}
