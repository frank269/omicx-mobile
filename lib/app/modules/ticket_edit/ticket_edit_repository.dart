import 'package:omicx_v2/app/core/core.dart';
import 'package:omicx_v2/app/data/constants/constant.dart';
import 'package:omicx_v2/app/data/models/models.dart';
import 'package:omicx_v2/app/data/services/repository.dart';

class TicketEditRepository extends BaseController implements BaseRepository {
  Future<bool> editTicket(UpdateTicketParam param) async {
    var response = await ApiUtils.sendPut(
      base: ApiConstants.BASE_API,
      path: ApiConstants.UPDATE_DETAIL_TICKET_PATH,
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
