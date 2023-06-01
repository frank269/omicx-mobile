import 'package:get/get.dart';
import 'package:omicx_v2/app/modules/contacts/contacts_controller.dart';
import '/app/core/core.dart';
import '/app/data/models/models.dart';
import 'contact_add_repository.dart';

class ContactAddController extends GetxController {
  final _repo = ContacAddRepository();
  createContact(ContactCreateParam item) async {
    item.creationTime = DateTime.now().toString();
    item.contactHistoryId = 0;
    var result = await _repo.createContact(item);
    if (result) {
      DialogHelper.showToast(message: 'Thêm thành công');
      Get.find<ContactsController>().loadData();
      Get.back();
    } else {
      DialogHelper.showToast(message: 'Có lỗi xảy ra, Thêm không thành công');
    }
  }
}
