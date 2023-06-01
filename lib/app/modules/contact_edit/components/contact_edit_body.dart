import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/data/models/models.dart';
import '/app/modules/contacts/contacts_controller.dart';
import 'package:intl/intl.dart';

class ContactEditBody extends StatefulWidget {
  final widget = _ContactEditBodyState();

  ContactEditBody({Key? key, required this.item}) : super(key: key);
  getContact() => widget.getContact();
  final ContactDetail item;

  @override
  State<ContactEditBody> createState() => widget;
}

class _ContactEditBodyState extends State<ContactEditBody> {
  getContact() => _contact;
  var _contact = ContactDetail();
  final birthDayTextController = TextEditingController();
  final dropDownInfo = ['', 'Cá nhân', 'Gia đình', 'Người thân'];
  final Map<String, String> infoMap = {
    'PERSONAL': 'Cá nhân',
    'FAMILY': 'Gia đình',
    'RELATIVES': 'Người thân'
  };
  final Map<String, String> infoMapReturn = {
    'Cá nhân': 'PERSONAL',
    'Gia đình': 'FAMILY',
    'Người thân': 'RELATIVES'
  };
  final dropDownSex = ['', 'Nam', 'Nữ'];
  final Map<int, String> sexMap = {1: 'Nam', 2: 'Nữ'};
  final Map<String, int> sexMapReturn = {'Nam': 1, 'Nữ': 2};
  final dropDownAssignee = [
    '',
  ];
  final dropDownMucdo = ['', 'Cao', 'Trung bình', 'Thấp'];
  final Map<String, String> priorityMap = {
    'HIGH': 'Cao',
    'MEDIUM': 'Trung bình',
    'LOW': 'Thấp'
  };
  final Map<String, String> priorityMapReturn = {
    'Cao': 'HIGH',
    'Trung bình': 'MEDIUM',
    'Thấp': 'LOW'
  };
  List<Agent> agents = [];
  var selectedAgent = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _contact = widget.item;
      agents = Get.find<ContactsController>().agentList;
      dropDownAssignee
          .addAll(agents.map<String>((e) => e.displayName ?? '').toList());
      agents.forEach((element) {
        if (element.value == _contact.userTakeCareId)
          selectedAgent = element.displayName ?? '';
      });
      birthDayTextController.text = _contact.birthDate == null
          ? ''
          : DateFormat('dd-MM-yyyy').format(DateTime.parse(
              _contact.birthDate ?? (DateTime.now().toString())));
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
            'Thông tin liên hệ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          buildContactInfo(
              node,
              (value) => {_contact.phoneNumber1 = value},
              (value2) => {_contact.phoneNumber1Label = infoMapReturn[value2]},
              'SDT1',
              _contact.phoneNumber1,
              infoMap[_contact.phoneNumber1Label],
              dropDownInfo,
              true),
          buildContactInfo(
              node,
              (value) => {_contact.phoneNumber2 = value},
              (value2) => {_contact.phoneNumber2Label = infoMapReturn[value2]},
              'SDT2',
              _contact.phoneNumber2,
              infoMap[_contact.phoneNumber2Label],
              dropDownInfo,
              false),
          buildContactInfo(
              node,
              (value) => {_contact.email = value},
              (value2) => {_contact.emailLabel = infoMapReturn[value2]},
              'Email',
              _contact.email,
              infoMap[_contact.emailLabel],
              dropDownInfo,
              false),
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
          buildCommonInfo(node, (value) => {_contact.fullName = value},
              'Họ và tên', _contact.fullName, true),
          buildCommonInfo(
            node,
            (value) => {_contact.identificationCard = value},
            'Chứng minh thư',
            _contact.identificationCard,
          ),
          buildDropdownRow(
              node,
              (value) => {_contact.gender = sexMapReturn[value]},
              'Giới tính',
              sexMap[_contact.gender] ?? '',
              dropDownSex),
          buildDatePickerRow(node, (value) {
            birthDayTextController.text =
                DateFormat('dd-MM-yyyy').format(DateTime.parse(value));
            _contact.birthDate = DateTime.parse(value).toString();
          }, 'Ngày sinh', birthDayTextController),
          buildCommonInfo(node, (value) => {_contact.contactGroup = value},
              'Nhóm khách hàng', _contact.contactGroup),
          buildDropdownRow(node, (value) {
            selectedAgent = value;
            agents.forEach((element) {
              if (element.displayName == value) {
                _contact.userTakeCareId = element.value;
              }
            });
          }, 'Người phụ trách', selectedAgent, dropDownAssignee),
          buildCommonInfo(node, (value) => {_contact.companyName = value},
              'Công ty', _contact.companyName),
          buildCommonInfo(node, (value) => {_contact.occupationName = value},
              'Nghề nghiệp', _contact.occupationName),
          buildCommonInfo(
              node,
              (value) => {_contact.income = int.tryParse(value)},
              'Thu nhập',
              _contact.income?.toString()),
          buildCommonInfo(node, (value) => {_contact.address = value},
              'Địa chỉ', _contact.address),
          buildCommonInfo(
              node, (value) => {}, 'Phương thức liên hệ mong muốn', ''),
          buildDropdownRow(
              node,
              (value) => {_contact.potentialLevel = priorityMapReturn[value]},
              'Mức độ tiềm năng',
              priorityMap[_contact.potentialLevel] ?? '',
              dropDownMucdo),
          buildCommonInfo(node, (value) => {_contact.loan = value},
              'Nhu cầu vay', _contact.loan),
          buildCommonInfo(node, (value) => {_contact.assetType = value},
              'Tài sản vay', _contact.assetType),
        ],
      ),
    );
  }

  buildCommonInfo(FocusScopeNode node, onEditing, String hint, String? value,
          [bool needValue = false]) =>
      Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: getTextField(node, onEditing, hint, value, needValue),
      );

  buildContactInfo(FocusScopeNode node, onEdited1, onEdited2, String hint,
          String? value, dropdownValue, items,
          [bool needValue = false]) =>
      Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: getTextField(node, onEdited1, hint, value, needValue),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              flex: 1,
              child: buidDropdown(
                dropdownValue == null ? '' : dropdownValue,
                items,
                (value) => setState(
                  () => onEdited2(value),
                ),
              ),
            ),
          ],
        ),
      );

  buildDatePickerRow(
          FocusScopeNode node, onEditing, String hint, textController,
          [bool needValue = false]) =>
      Padding(
        padding: const EdgeInsets.only(
          bottom: 15.0,
        ),
        child: TextFormField(
          controller: textController,
          onTap: () async {
            var picked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2025),
            );
            if (picked != null) onEditing(picked.toString());
            node.nextFocus();
          },
          decoration: getDecor(hint, Icon(Icons.calendar_today)),
          textInputAction: TextInputAction.next,
          onEditingComplete: node.nextFocus,
          onChanged: onEditing,
          validator: (value) {
            if (needValue && (value?.isEmpty ?? true)) {
              return 'Trường bắt buộc';
            }
            return null;
          },
        ),
      );

  buildDropdownRow(FocusScopeNode node, onEditing, String hint,
          String selectedValue, items,
          [bool needValue = false]) =>
      Padding(
        padding: const EdgeInsets.only(
          bottom: 15.0,
        ),
        child: Container(
          height: 60,
          padding: EdgeInsets.only(left: 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
            children: [
              Text(
                hint,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                flex: 1,
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
            ],
          ),
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

  getTextField(FocusScopeNode node, onEditing, String hint, String? value,
          [bool needValue = false]) =>
      TextFormField(
        initialValue: value,
        decoration: getDecor(hint),
        textInputAction: TextInputAction.next,
        onEditingComplete: node.nextFocus,
        onChanged: onEditing,
        validator: (value) {
          if (needValue && (value?.isEmpty ?? true)) {
            return 'Trường bắt buộc';
          }
          return null;
        },
      );

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
