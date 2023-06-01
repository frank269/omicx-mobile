import '/app/core/core.dart';
import '/app/data/constants/constant.dart';
import '/app/data/models/models.dart';
import '/app/data/services/repository.dart';

class LoginRepository extends BaseController implements BaseRepository {
  Future<AuthResponse?> login(String username, String password,
      [bool showLoadingPopup = false]) async {
    if (showLoadingPopup) showLoading('Đăng nhập ...');
    var authRequest =
        AuthRequest(userNameOrEmailAddress: username, password: password);
    var response = await ApiUtils.sendPost(
        base: ApiConstants.BASE_API,
        path: ApiConstants.AUTHENTICATE_PATH,
        body: authRequest.toJson(),
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
          'Abp.TenantId': '102',
        }).catchError(handleError);
    if (showLoadingPopup) hideLoading();
    if (response != null) {
      if (response['success']) {
        var result = response['result'];
        var authResponse = AuthResponse.fromMap(result);
        return authResponse;
      }
    }
    return null;
  }
}
