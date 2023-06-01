import '/app/core/core.dart';
import '/app/data/constants/constant.dart';
import '/app/data/models/models.dart';
import '/app/data/services/repository.dart';

class TicketAddRepository extends BaseController implements BaseRepository {
  Future<bool> createTicket(CreateTicketParam param) async {
    var response = await ApiUtils.sendPost(
      base: ApiConstants.BASE_API,
      path: ApiConstants.CREATE_TICKET_PATH,
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
