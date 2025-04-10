import 'package:creartify/core/utils/constants.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@singleton
class SecureStorage {
  SecureStorage(this._prefs);

  final FlutterSecureStorage _prefs;

  Future<bool> get hasKey async => await getKey() != null;
  Future<String?> getKey() async => await _prefs.read(key: Constants.apiKey);
  Future<void> setKey(String key) => _prefs.write(key: Constants.apiKey, value: key);
  Future<void> removeKey() async => await _prefs.delete(key: Constants.apiKey);
}
