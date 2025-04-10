import 'package:creartify/core/utils/constants.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class LocalStorage {
  LocalStorage(this._prefs);

  final SharedPreferences _prefs;

  bool get hasUser => getUser() != null;
  String? getUser() => _prefs.getString(Constants.user);
  void setUser(String user) => _prefs.setString(Constants.user, user);
  void removeUser() => _prefs.remove(Constants.user);

}
