import '/app/data/models/models.dart';

abstract class IDataProvider {
  init();
  UserRequest getSavedUser();
  String getAuthToken();
  String getTenantId();
  saveUserRequest(UserRequest user);
  saveAuthToken(String token);
  saveTenantId(String id);
}
