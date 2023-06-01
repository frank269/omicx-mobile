import 'package:get/get.dart';

import '/app/data/models/models.dart';
import '/app/data/services/call_service.dart';
import '/app/data/services/db_service.dart';
import '/app/routes/pages.dart';
import 'call_history_repository.dart';

class CallHistoryController extends GetxController {
  var _callHistoryRepository = CallHistoryRepository();
  var _callService = Get.find<CallService>();
  var _dbService = Get.find<DbService>();
  var tenantID = Get.find<DbService>().currentUser?.tenantId ?? 0;
  var listHistory = <CallHistory>[].obs;
  var page = 1;
  var isbusy = false;

  loadData() async {
    isbusy = true;
    page = 1;
    listHistory.value = await _callHistoryRepository.getCallHistoryList(
        CallHistoryParam(cloudTenantId: tenantID, currentPage: page));
    update();
    isbusy = false;
  }

  loadMore() async {
    isbusy = true;
    var result = await _callHistoryRepository.getCallHistoryList(
        CallHistoryParam(cloudTenantId: tenantID, currentPage: page + 1));
    if (result.isNotEmpty) {
      listHistory.value.addAll(result);
      page += 1;
      update();
    }
    isbusy = false;
  }

  call(CallHistory item) {
    _callService.call(
        item.direction == 'IN_BOUND' ? "${item.caller}" : "${item.called}",
        item.contact?.fullName ?? '',
        int.tryParse(item.contact?.contactId ?? '0') ?? 0,
        _dbService.currentUser?.userId ?? 0);
  }

  createTicket(CallHistory item) {
    Get.toNamed(
        '${Routes.TICKET_ADD}?phoneNumber=${item.direction == 'OUT_BOUND' ? item.called : item.caller}&contactId=${item.contact?.contactId}');
  }

  var callHistory = CallHistory();
  viewDetail(CallHistory item) {
    callHistory = item;
    Get.toNamed(Routes.CALL_HISTORY_DETAIL);
  }
}
