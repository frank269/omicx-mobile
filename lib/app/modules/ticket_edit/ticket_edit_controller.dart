import 'package:get/get.dart';
import '/app/core/core.dart';
import '/app/data/models/models.dart';
import '/app/modules/controllers.dart';
import 'ticket_edit_repository.dart';
import '/app/modules/ticket_detail/ticket_detail_controller.dart';

class TicketEditController extends GetxController {
  var ticketDetail = Get.find<TicketDetailController>().ticket;
  final _repo = TicketEditRepository();
  saveTicket(Ticket item) async {
    var param = UpdateTicketParam(
      agentAssignee: item.assigneeAgentId?.toString(),
      id: item.id,
      priority: item.priority,
      status: item.status,
      ticketType: item.ticketType,
    );
    var result = await _repo.editTicket(param);
    if (result) {
      DialogHelper.showToast(message: 'Sửa ticket thành công');
      Get.find<TicketDetailController>().loadTicket(item.id ?? 0);
      Get.find<TicketController>().loadData();
      Get.back();
    } else {
      DialogHelper.showToast(message: 'Có lỗi xảy ra, Sửa không thành công');
    }
  }
}
