import 'package:get/get.dart';

import '/app/data/models/models.dart';
import '/app/data/services/services.dart';
import '/app/modules/tickets/tickets_repository.dart';
import '/app/routes/pages.dart';
import 'components/ticket_filter_dialog.dart';

class TicketController extends GetxController {
  final _ticketsRepository = TicketsRepository();
  var _callService = Get.find<CallService>();
  var _dbService = Get.find<DbService>();
  var listTickets = <Ticket>[].obs;
  List<Agent> agentList = [];
  int _skipcount = 0;
  final int MAX = 20;
  var isbusy = false;
  List<String> status = [];
  String? name = null;
  String? id = null;

  _ticketParam(skip, take) => TicketParam(
        ticketFilterField: TicketFilterField(
            campaigns: [],
            groupProcessing: [],
            status: status,
            title: name,
            ticketCode: id),
        skipCount: skip,
        maxResultCount: take,
      );

  loadData() async {
    isbusy = true;
    _skipcount = 0;
    listTickets.value =
        await _ticketsRepository.getTicket(_ticketParam(_skipcount, MAX));
    agentList = await _ticketsRepository.getAgentList();
    update();
    isbusy = false;
  }

  loadMore() async {
    isbusy = true;
    var result = await await _ticketsRepository
        .getTicket(_ticketParam(_skipcount + MAX, MAX));
    if (result.isNotEmpty) {
      listTickets.value.addAll(result);
      _skipcount += MAX;
      update();
    }
    isbusy = false;
  }

  filter(String i, String n, String s) {
    print(status);
    status = (s == '' ? [] : [s]);
    name = (n == '' ? null : n);
    id = (i == '' ? null : i);
    loadData();
  }

  call(Ticket item) async {
    var callHistory =
        await _ticketsRepository.getHistoryContactInTicket(item.id ?? 0);
    if (callHistory != null &&
        callHistory.items != null &&
        callHistory.items?.isNotEmpty == true &&
        callHistory.items?.first?.phoneNumber1 != null) {
      _callService.call(
        callHistory.items?.first?.phoneNumber1 ?? '0',
        callHistory.items?.first?.fullName ?? '',
        0,
        _dbService.currentUser?.userId ?? 0,
      );
    }
  }

  merge(Ticket item) {}

  assign(Ticket item) {}
  viewDetail(Ticket item) {
    Get.toNamed('${Routes.TICKET_DETAIL}?id=${item.id}');
  }

  addTicket() {
    Get.toNamed(Routes.TICKET_ADD);
  }

  filterTicket() {
    Get.dialog(
      TicketFilterDialog(),
    );
  }
}
