import 'package:get/get.dart';
import 'package:omicx_v2/app/routes/pages.dart';
import '/app/data/services/services.dart';
import '/app/modules/contacts/contact_repository.dart';
import '/app/data/models/models.dart';

class ContactsController extends GetxController {
  var _contactRepository = ContactRepository();
  var _callService = Get.find<CallService>();
  var _dbService = Get.find<DbService>();
  var listContacts = <Contact>[].obs;
  List<Agent> agentList = [];
  var skipCount = 0;
  var MAX = 20;
  var isbusy = false;

  loadData() async {
    isbusy = true;
    skipCount = 0;
    listContacts.value = await _contactRepository.getContactList(
        ContactParam(maxResultCount: MAX, skipCount: skipCount));
    agentList = await _contactRepository.getAgentList();
    update();
    isbusy = false;
  }

  loadMore() async {
    isbusy = true;
    var result = await _contactRepository.getContactList(
        ContactParam(maxResultCount: MAX, skipCount: skipCount + MAX));
    if (result.isNotEmpty) {
      listContacts.value.addAll(result);
      skipCount += MAX;
      update();
    }
    isbusy = false;
  }

  call(Contact item) {
    _callService.call(
      item.phoneNumber1 ?? '',
      item.fullName ?? '',
      item.id ?? 0,
      _dbService.currentUser?.userId ?? 0,
    );
  }

  createTicket(Contact item) {}
  duplicateTicket(Contact item) {}

  var contactItem = Contact();
  viewDetail(Contact item) {
    contactItem = item;
    Get.toNamed(Routes.CONTACT_DETAIL);
  }

  addContact() {
    Get.toNamed(Routes.CONTACT_ADD);
  }
}
