import '/app/data/constants/constant.dart';
import '/app/data/models/models.dart';
import '/app/data/services/repository.dart';
import '/app/core/core.dart';

class DashboardRepository extends BaseController implements BaseRepository {
  Future<AgentInbound> getAgentInbound(DashBoardParam params) async {
    var response = await ApiUtils.sendPost(
      base: ApiConstants.BASE_API,
      path: ApiConstants.DASHBOARD_AGENT_INBOUND_PATH,
      headers: headers,
      body: params.toJson(),
    ).catchError(handleError);
    if (response != null) {
      if (response['success']) {
        var data = response['result'];

        if (data == null) return AgentInbound();
        return AgentInbound.fromMap(data);
      }
    }
    return AgentInbound();
  }

  Future<AgentOutbound> getAgentOutbound(DashBoardParam params) async {
    var response = await ApiUtils.sendPost(
      base: ApiConstants.BASE_API,
      path: ApiConstants.DASHBOARD_AGENT_OUTBOUND_PATH,
      headers: headers,
      body: params.toJson(),
    ).catchError(handleError);
    if (response != null) {
      if (response['success']) {
        var data = response['result'];

        if (data == null) return AgentOutbound();
        return AgentOutbound.fromMap(data);
      }
    }
    return AgentOutbound();
  }

  Future<AgentTask> getAgentTask(DashBoardParam params) async {
    var response = await ApiUtils.sendPost(
      base: ApiConstants.BASE_API,
      path: ApiConstants.DASHBOARD_AGENT_TASK_PATH,
      headers: headers,
      body: params.toJson(),
    ).catchError(handleError);
    if (response != null) {
      if (response['success']) {
        var data = response['result'];

        if (data == null) return AgentTask();
        return AgentTask.fromMap(data);
      }
    }
    return AgentTask();
  }

  Future<AgentTicket> getAgentTicket(DashBoardParam params) async {
    var response = await ApiUtils.sendPost(
      base: ApiConstants.BASE_API,
      path: ApiConstants.DASHBOARD_AGENT_CLOSED_TICKET_PATH,
      headers: headers,
      body: params.toJson(),
    ).catchError(handleError);
    if (response != null) {
      if (response['success']) {
        var data = response['result'];
        if (data == null) return AgentTicket();
        return AgentTicket.fromMap(data);
      }
    }
    return AgentTicket();
  }
}
