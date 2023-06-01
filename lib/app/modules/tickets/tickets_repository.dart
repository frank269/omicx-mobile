import '/app/core/core.dart';
import '/app/data/constants/constant.dart';
import '/app/data/models/models.dart';
import '/app/data/services/repository.dart';

class TicketsRepository extends BaseController implements BaseRepository {
  Future<List<Agent>> getAgentList() async {
    var response = await ApiUtils.sendGet(
      base: ApiConstants.BASE_API,
      path: ApiConstants.GET_AGENT_PATH,
      headers: headers,
      params: null,
    ).catchError(handleError);
    if (response != null) {
      if (response['success']) {
        var data = response['result'];
        if (data == []) return List<Agent>.empty();
        return List.from(data).map<Agent>((a) => Agent.fromMap(a)).toList();
      }
    }
    return List<Agent>.empty();
  }

  Future<ContactRelation> getHistoryContactInTicket(int id) async {
    var response = await ApiUtils.sendGet(
        base: ApiConstants.BASE_API,
        path: ApiConstants.GET_CONTACT_RELATION_PATH,
        headers: headers,
        params: {"TicketId": "$id"}).catchError(handleError);
    if (response != null) {
      if (response['success']) {
        var data = response['result'];
        return ContactRelation.fromMap(data);
      }
    }
    return ContactRelation();
  }

  Future<List<Ticket>> getTicket(TicketParam ticketParam) async {
    var response = await ApiUtils.sendPost(
      base: ApiConstants.BASE_API,
      path: ApiConstants.TICKET_LOAD_PATH,
      headers: headers,
      body: ticketParam.toJson(),
    ).catchError(handleError);
    if (response != null) {
      if (response['success']) {
        var data = response['result'];
        if (data == []) return List<Ticket>.empty();
        return List.from(data['items'])
            .map<Ticket>((ticket) => Ticket.fromMap(ticket))
            .toList();
      }
    }
    return List<Ticket>.empty();
  }

  Future<Ticket> getDetailTicket(int id) async {
    var response = await ApiUtils.sendGet(
        base: ApiConstants.BASE_API,
        path: ApiConstants.GET_TICKET_DETAIL_PATH,
        headers: headers,
        params: {"id": "$id"}).catchError(handleError);
    if (response != null) {
      if (response['success']) {
        var data = response['result'];
        return Ticket.fromMap(data);
      }
    }
    return Ticket();
  }
}
