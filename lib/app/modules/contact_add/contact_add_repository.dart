import '/app/core/core.dart';
import '/app/data/constants/constant.dart';
import '/app/data/models/models.dart';
import '/app/data/services/repository.dart';

class ContacAddRepository extends BaseController implements BaseRepository {
  Future<bool> createContact(ContactCreateParam param) async {
    var response = await ApiUtils.sendPost(
      base: ApiConstants.BASE_API,
      path: ApiConstants.CREATE_CONTACT_PATH,
      headers: headers,
      body: param.toJson(),
    ).catchError(handleError);
    if (response != null) {
      if (response['success']) {
        return true;
      }
    }
    return false;
  }
}
