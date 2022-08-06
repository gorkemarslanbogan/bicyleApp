import 'package:bcyleapp/model/trips_model.dart';
import 'package:bcyleapp/product/managment/cache/shared_exception.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Sharedkey { counter, theme,tripModel }

class SharedManager {
  SharedPreferences? preferences;

  SharedManager();

  Future<void> init() async {
     preferences = await SharedPreferences.getInstance();
  }

  void _checkPreferences() {
    if (preferences == null) throw SharedException();
  }
 //String//
  Future<void> saveString(Sharedkey key, String value) async {
    _checkPreferences();
    await preferences?.setString(key.name, value);
  }

  String? getString(Sharedkey key) {
    _checkPreferences();
    return preferences?.getString(key.name);
  }
  Future<void> SaveStringList(Sharedkey key, List<String> value) async {
    _checkPreferences();
     await preferences?.setStringList(key.name, value);
  }

  
  List<String>? getStringList(Sharedkey key) {
    _checkPreferences();
    return preferences?.getStringList(key.name);
  }

  Future<void> remove(Sharedkey key) async {
    _checkPreferences();
    await preferences?.remove(key.name);
  }
  
  Future<void> saveBool(Sharedkey key, bool value) async {
      _checkPreferences();
      await preferences?.setBool(key.name, value);
    }

    bool getBool(Sharedkey key) {
      _checkPreferences();
      return preferences?.getBool(key.name) ?? false;
    }
}
