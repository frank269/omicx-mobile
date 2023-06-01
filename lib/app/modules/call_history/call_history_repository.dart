import '/app/data/models/models.dart';
import '/app/core/core.dart';
import '/app/data/constants/constant.dart';
import '/app/data/services/repository.dart';

class CallHistoryRepository extends BaseController implements BaseRepository {


  Future<List<CallHistory>> getCallHistoryList(
      CallHistoryParam ticketParam) async {
    var response = await ApiUtils.sendPost(
      base: ApiConstants.BASE_API,
      path: ApiConstants.CALL_HISTORY_PATH,
      headers: headers,
      body: ticketParam.toJson(),
    ).catchError(handleError);
    if (response != null) {
      if (response['success']) {
        var data = response['data'];
        if (data == []) {
          return List<CallHistory>.empty();
        }
        return List.from(data['data'])
            .map<CallHistory>((callhistory) => CallHistory.fromMap(callhistory))
            .toList();
      }
    }
    return List<CallHistory>.empty();
  }

  // Future<Ticket> getDetailTicket(int id) async {
  //   var response = await ApiUtils.sendGet(
  //       base: ApiConstants.BASE_API,
  //       path: ApiConstants.TICKET_DETAIL_PATH,
  //       headers: headers,
  //       params: {"id": "$id"}).catchError(handleError);
  //   if (response != null) {
  //     if (response['success']) {
  //       var data = response['result'];
  //       return Ticket.fromMap(data);
  //     }
  //   }
  //   return Ticket();
  // }
}
