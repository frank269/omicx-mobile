import '/app/data/constants/constant.dart';

import '/app/data/models/models.dart';

import '/app/core/core.dart';
import '/app/data/services/repository.dart';

class UserRepository extends BaseController implements BaseRepository {
  Future<User> getUserDetail() async {
    var response = await ApiUtils.sendGet(
      base: ApiConstants.BASE_API,
      path: ApiConstants.GET_USER_BYID_PATH,
      headers: headers,
      params: {'id': '${dbService.currentUser?.userId}'},
    ).catchError(handleError);
    if (response != null) {
      if (response['success']) {
        var data = response['result'];
        return User.fromMap(data);
      }
    }
    return User();
  }
}
