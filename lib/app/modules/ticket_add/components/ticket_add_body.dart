import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers.dart';
import '/app/data/models/models.dart';
import '/app/modules/contacts/contacts_controller.dart';
import 'package:intl/intl.dart';

class TicketAddBody extends StatefulWidget {
  final widget = _TicketAddBodyState();
  CreateTicketParam getTicket() {
    return widget.getTicket();
  }

  setInfo(String? phone, String? contactId) {
    widget.setInfo(phone, contactId);
  }

  @override
  State<TicketAddBody> createState() => widget;
}

class _TicketAddBodyState extends State<TicketAddBody> {
  CreateTicketParam getTicket() {
    return _ticket;
  }

  setInfo(String? phone, String? contactId) {
    _ticket.phoneNumberContact = phone;
    _ticket.contactId = contactId == null ? null : int.tryParse(contactId);
    if (mounted) setState(() {});
  }

  final _ticket = CreateTicketParam();

  final dropDownAssignee = [
    '',
  ];
  var sourceSelected = '';
  final dropDownSources = [
    '',
    'WEB_FORM',
    'LIVE_CHAT',
    'FB_CHAT',
    'ZALO_CHAT',
    'EMAIL',
    'CALL'
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
  var finishDate = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _ticket.status = 'OPEN';
      _ticket.ticketType = 'COMPLAIN';
      finishDate =
          '${DateFormat('dd-MM-yyyy HH:mm:ss').format(DateTime.now())}\n-${DateFormat('dd-MM-yyyy HH:mm:ss').format(DateTime.now().add(Duration(days: 1)))}';
      agents = Get.find<TicketController>().agentList;
      dropDownAssignee
          .addAll(agents.map<String>((e) => e.displayName ?? '').toList());
      agents.forEach((element) {
        if (element.value == _ticket.agentId)
          selectedAgent = element.displayName ?? '';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          buildTextRow((value) => {_ticket.service = value}, 'Loại dịch vụ (*)',
              _ticket.service, true),
          buildTextRow((value) => {_ticket.title = value}, 'Tiêu đề (*)',
              _ticket.title, true),
          buildDropdownRow((value) {
            _ticket.ticketType = typeMapReturn[value];
            switch (value) {
              case 'Phàn nàn / Khiếu nại':
                finishDate =
                    '${DateFormat('dd-MM-yyyy HH:mm:ss').format(DateTime.now())}\n-${DateFormat('dd-MM-yyyy HH:mm:ss').format(DateTime.now().add(Duration(days: 1)))}';
                break;
              case 'Yêu cầu':
                finishDate =
                    '${DateFormat('dd-MM-yyyy HH:mm:ss').format(DateTime.now())} \n- ${DateFormat('dd-MM-yyyy HH:mm:ss').format(DateTime.now().add(Duration(days: 2)))}';
                break;
              default:
                finishDate = '';
                break;
            }
          }, 'Loại ticket (*)', typeMap[_ticket.ticketType] ?? '',
              dropDownType),
          buildDropdownRow((value) {
            sourceSelected = value ?? '';
            _ticket.channelSource = value;
          }, 'Nguồn kênh', sourceSelected, dropDownSources),
          buildDropdownRow((value) {}, 'Trạng thái', 'Mới', ['Mới']),
          buildDropdownRow((value) {
            _ticket.priority = priorityMapReturn[value];
          }, 'Mức độ ưu tiên', priorityMap[_ticket.priority] ?? '',
              dropDownPriority),
          buildDateRow((value) {}, 'Hạn hoàn thành', finishDate, null),
          buildTextRow((value) {
            _ticket.phoneNumberContact = value;
          }, 'Số điện thoại', _ticket.phoneNumberContact),
          buildTextRow((value) {
            _ticket.contactName = value;
          }, 'Người liên hệ'),
          buildTextRow((value) {}, 'Nhóm phụ trách'),
          buildDropdownRow((value) {
            selectedAgent = value;
            agents.forEach((element) {
              if (element.displayName == value) {
                _ticket.agentId = element.value;
              }
            });
          }, 'Người xử lý', selectedAgent, dropDownAssignee),
          buildEditor((value) {
            _ticket.note = value;
          }, 'Kịch bản chăm sóc'),
          buildUpload((value) {}, 'Đính kèm'),
          SizedBox(
            height: 20,
          ),
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
                height: 60,
                padding: EdgeInsets.only(left: 40, top: 5),
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

  buildDateRow(onEditing, String hint, String selectedValue, items) => Padding(
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
                height: 60,
                padding: EdgeInsets.only(left: 40, top: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Text(
                  selectedValue,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  buildTextRow(onEditing, String hint,
          [String? initValue = null, needValue = false]) =>
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
              child: TextFormField(
                initialValue: initValue,
                decoration: getDecor(''),
                textInputAction: TextInputAction.next,
                onChanged: onEditing,
                validator: (value) {
                  if (needValue && (value?.isEmpty ?? true)) {
                    return 'Trường bắt buộc';
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
      );
  buildEditor(onEditing, String hint, [needValue = false]) => Padding(
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
              child: TextFormField(
                maxLines: 5,
                decoration: getDecor(''),
                textInputAction: TextInputAction.newline,
                onChanged: onEditing,
                validator: (value) {
                  if (needValue && (value?.isEmpty ?? true)) {
                    return 'Trường bắt buộc';
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
      );
  buildUpload(onEditing, String hint, [needValue = false]) => Padding(
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
              child: Text(
                'Tải file hoặc duyệt từ điện thoại',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
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
