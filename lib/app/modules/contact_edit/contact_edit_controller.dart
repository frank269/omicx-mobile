import 'package:get/get.dart';

import '/app/core/core.dart';
import '/app/data/models/models.dart';
import '/app/modules/contact_detail/contact_detail_controller.dart';
import '/app/modules/controllers.dart';
import 'contact_edit_repository.dart';

class ContactEditController extends GetxController {
  var contactDetail = Get.find<ContactDetailController>().contactDetail;
  final _repo = ContactEditRepository();
  saveContact(ContactDetail item) async {
    item.gender = item.gender == null ? 0 : item.gender;
    var result = await _repo.updateContact(item.id ?? 0, item);
    var result1 = await _repo.updateGeneralContact(item.id ?? 0, item);
    if (result && result1) {
      DialogHelper.showToast(message: 'Sửa khách hàng thành công');
      Get.find<ContactDetailController>().loadData(item.id ?? 0);
      Get.find<ContactsController>().loadData();
      Get.back();
    } else {
      DialogHelper.showToast(message: 'Có lỗi xảy ra, Sửa không thành công');
    }
  }
}
