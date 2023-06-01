import 'package:shared_preferences/shared_preferences.dart';

import '/app/data/interfaces/interfaces.dart';
import '/app/data/models/models.dart';

class SharedPreferencesProvider implements IDataProvider {
  final String KEY_USERNAME = 'username';
  final String KEY_PASSWORD = 'password';
  final String KEY_REMEMBER = 'remember';
  final String KEY_TOKEN = 'token';
  final String KEY_TENANT_ID = 'tenantId';

  SharedPreferences? _prefs = null;

  logOut() {
    _setSaved(KEY_USERNAME, '');
    _setSaved(KEY_PASSWORD, '');
    _setSaved(KEY_REMEMBER, '');
    _setSaved(KEY_TOKEN, '');
  }

  @override
  init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  String getAuthToken() {
    return _getSaved(KEY_TOKEN);
  }

  _getSaved(key) => _prefs?.getString(key) ?? '';
  _setSaved(key, value) => _prefs?.setString(key, value);

  @override
  UserRequest getSavedUser() {
    return UserRequest(_getSaved(KEY_USERNAME), _getSaved(KEY_PASSWORD),
        _getSaved(KEY_REMEMBER));
  }

  @override
  saveAuthToken(String token) {
    _setSaved(KEY_TOKEN, token);
  }

  @override
  saveUserRequest(UserRequest user) {
    _setSaved(KEY_USERNAME, user.username);
    _setSaved(KEY_PASSWORD, user.password);
    _setSaved(KEY_REMEMBER, user.rememberme);
  }

  @override
  String getTenantId() {
    return _getSaved(KEY_TENANT_ID);
  }

  @override
  saveTenantId(String id) {
    _setSaved(KEY_TENANT_ID, id);
  }
}
