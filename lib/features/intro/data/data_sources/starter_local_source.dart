import 'package:flutter_app3/core/errors/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StarterLocalSource {
  final SharedPreferences _sharedPreferences;

  const StarterLocalSource(this._sharedPreferences);
  Future<bool> getStarter() async{
    final bool? data = _sharedPreferences.getBool("starter");
    if (data == null) {
      throw EmptyCacheException();
    }
    return data;
  }
  void setStarter(bool val) {
    _sharedPreferences.setBool("starter", val);
  }
}
