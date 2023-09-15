import 'package:shared_preferences/shared_preferences.dart';

class DarkConfigRepository {
  static const String _isdarked = "isdarked";

  final SharedPreferences _preferences;

  DarkConfigRepository(this._preferences);

  Future<void> setDarked(bool value) async {
    _preferences.setBool(_isdarked, value);
  }

  bool isDarked() {
    return _preferences.getBool(_isdarked) ?? false;
  }
}
