import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:omicx_v2/app/modules/controllers.dart';
import '/app/data/models/models.dart';
import '/app/modules/contacts/contacts_controller.dart';
import 'package:intl/intl.dart';

class TicketEditBody extends StatefulWidget {
  final widget = _TicketEditBodyState();

  TicketEditBody({Key? key, required this.item}) : super(key: key);
  getTicket() => widget.getTicket();
  final Ticket item;

  @override
  State<TicketEditBody> createState() => widget;
}

class _TicketEditBodyState extends State<TicketEditBody> {
  getTicket() => _ticket;
  var _ticket = Ticket();

  final dropDownAssignee = [
    '',
  ];
  final dropDownPriority = ['', 'Cao', 'Trung bình', 'Thấp'];
  final Map<int, String> priorityMap = {3: 'Cao', 2: 'Trung bình', 1: 'Thấp'};
  final Map<String, int> priorityMapReturn = {
    'Cao': 3,
    'Trung bình': 2,
    'Thấp': 1
  };

  final dropDownStatus = [
    '',
    'Mới',
    'Đang xử lý',
    'Trì hoãn',
    'Đã xử lý',
    'Đóng'
  ];
  final Map<String, String> statusMap = {
    "OPEN": 'Mới',
    "PROCESSING": 'Đang xử lý',
    "DELAY": 'Trì hoãn',
    "PROCESSED": 'Đã xử lý',
    "CLOSED": 'Đóng',
  };
  final Map<String, String> statusMapReturn = {
    "Mới": "OPEN",
    "Đang xử lý": "PROCESSING",
    "Trì hoãn": "DELAY",
    "Đã xử lý": "PROCESSED",
    "Đóng": "CLOSED",
  };

  final dropDownType = [
    '',
    'Phàn nàn / Khiếu nại',
    'Yêu cầu',
    'Phản hồi / Góp ý'
  ];
  final Map<String, String> typeMap = {
    'COMPLAIN': 'Phàn nàn / Khiếu nại',
    'REQUEST_SUPPORT': 'Yêu cầu',
    'FEEDBACK': 'Phản hồi / Góp ý'
  };
  final Map<String, String> typeMapReturn = {
    'Phàn nàn / Khiếu nại': 'COMPLAIN',
    'Yêu cầu': 'REQUEST_SUPPORT',
    'Phản hồi / Góp ý': 'FEEDBACK'
  };
  List<Agent> agents = [];
  var selectedAgent = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _ticket = widget.item;
      agents = Get.find<TicketController>().agentList;
      dropDownAssignee
          .addAll(agents.map<String>((e) => e.displayName ?? '').toList());
      agents.forEach((element) {
        if (element.displayName == _ticket.agentAssignee)
          selectedAgent = element.displayName ?? '';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Thông tin chung',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          buildDropdownRow((value) {
            _ticket.status = statusMapReturn[value];
          }, 'Trạng thái', statusMap[_ticket.status] ?? '', dropDownStatus),
          buildDropdownRow((value) {
            _ticket.ticketType = typeMapReturn[value];
          }, 'Loại ticket', typeMap[_ticket.ticketType] ?? '', dropDownType),
          buildDropdownRow((value) {
            _ticket.priority = priorityMapReturn[value];
          }, 'Mức độ ưu tiên', priorityMap[_ticket.priority] ?? '',
              dropDownPriority),
          buildDropdownRow((value) {
            selectedAgent = value;
            agents.forEach((element) {
              if (element.displayName == value) {
                _ticket.assigneeAgentId = element.value;
              }
            });
          }, 'Người xử lý', selectedAgent, dropDownAssignee),
        ],
      ),
    );
  }

  buildDropdownRow(onEditing, String hint, String selectedValue, items) =>
      Padding(
        padding: const EdgeInsets.only(
          bottom: 15.0,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                hint,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 45,
                padding: EdgeInsets.only(left: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: selectedValue,
                  icon: const Icon(
                    Icons.arrow_drop_down,
                  ),
                  iconEnabledColor: Colors.black,
                  iconSize: 40,
                  elevation: 16,
                  underline: Text(''),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  dropdownColor: Colors.grey.shade100,
                  onChanged: (value) => setState(
                    () => onEditing(value),
                  ),
                  items: getDropDownItem(items),
                ),
              ),
            ),
          ],
        ),
      );

  buidDropdown(selectedvalue, items, selected) => Container(
        height: 60,
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
        ),
        child: DropdownButton<String>(
          isExpanded: true,
          value: selectedvalue,
          icon: const Icon(
            Icons.arrow_drop_down,
          ),
          iconEnabledColor: Colors.black,
          iconSize: 40,
          elevation: 16,
          underline: Text(''),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          dropdownColor: Colors.grey.shade100,
          onChanged: selected,
          items: getDropDownItem(items),
        ),
      );

  getDropDownItem(items) => items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
          ),
        );
      }).toList();

  getDecor(String hint, [icon]) => InputDecoration(
      enabledBorder: getBorder(),
      focusedBorder: getBorder(),
      border: getBorder(),
      hintText: hint,
      labelText: hint,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      prefixIcon: icon);

  getBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.grey),
        gapPadding: 0,
      );
}
