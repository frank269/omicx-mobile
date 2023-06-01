import 'package:get/get.dart';

import '/app/core/core.dart';
import '/app/data/models/models.dart';
import '/app/modules/ticket_add/ticket_add_repository.dart';
import '../controllers.dart';

class TicketAddController extends GetxController {
  final _repo = TicketAddRepository();
  createTicket(CreateTicketParam item) async {
    item.contactName = item.contactName == null || item.contactName == ''
        ? item.phoneNumberContact
        : item.contactName;
    var result = await _repo.createTicket(item);
    if (result) {
      DialogHelper.showToast(message: 'Thêm ticket thành công');
      Get.find<TicketController>().loadData();
      Get.back();
    } else {
      DialogHelper.showToast(message: 'Có lỗi xảy ra, Thêm không thành công');
    }
  }
}
