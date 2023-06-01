
import '/app/core/core.dart';
import '/app/data/constants/constant.dart';
import '/app/data/models/models.dart';
import '/app/data/services/repository.dart';

class ContactEditRepository extends BaseController implements BaseRepository {
  Future<bool> updateContact(int contactId, ContactDetail param) async {
    var response = await ApiUtils.sendPut(
      base: ApiConstants.BASE_API,
      path: ApiConstants.UPDATE_CONTACT_INFO_PATH,
      headers: headers,
      body: param.toJson(),
      param: {'contactId': '$contactId'},
    ).catchError(handleError);
    if (response != null) {
      if (response['success']) {
        return true;
      }
    }
    return false;
  }

  Future<bool> updateGeneralContact(int id, ContactDetail param) async {
    var response = await ApiUtils.sendPut(
      base: ApiConstants.BASE_API,
      path: ApiConstants.UPDATE_GENERAL_CONTACT_PATH,
      headers: headers,
      body: param.toJson(),
      param: {
        'contactId': '$id'
      }
    ).catchError(handleError);
    if (response != null) {
      if (response['success']) {
        return true;
      }
    }
    return false;
  }
}
