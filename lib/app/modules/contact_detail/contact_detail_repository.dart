import 'package:omicx_v2/app/core/core.dart';
import 'package:omicx_v2/app/data/constants/constant.dart';
import 'package:omicx_v2/app/data/models/models.dart';
import 'package:omicx_v2/app/data/services/repository.dart';

class ContactDetailRepository extends BaseController implements BaseRepository {
  Future<ContactDetail> getContactDetail(ContactDetailParam param) async {
    var response = await ApiUtils.sendGet(
      base: ApiConstants.BASE_API,
      path: ApiConstants.CONTACT_BY_ID_PATH,
      headers: headers,
      params: param.toMap(),
    ).catchError(handleError);
    if (response != null) {
      if (response['success']) {
        var data = response['result'];
        return ContactDetail.fromMap(data);
      }
    }
    return ContactDetail();
  }
}
