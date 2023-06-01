import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/modules/controllers.dart';

class TicketFilterDialog extends StatefulWidget {
  @override
  State<TicketFilterDialog> createState() => _TicketFilterDialogState();
}

class _TicketFilterDialogState extends State<TicketFilterDialog> {
  String selectedValue = '';
  final _idTicketEditingController = TextEditingController();
  final _nameTicketEditingController = TextEditingController();

  startFilter() {
    Get.find<TicketController>().filter(_idTicketEditingController.text,
        _nameTicketEditingController.text, selectedValue);
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      content: filterWidget(),
    );
  }

  filterWidget() => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Lọc theo điều kiện',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _idTicketEditingController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                  gapPadding: 0,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                  gapPadding: 0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                  gapPadding: 0,
                ),
                hintText: "Id ticket",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _nameTicketEditingController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                  gapPadding: 0,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                  gapPadding: 0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                  gapPadding: 0,
                ),
                hintText: "Tên ticket",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buidDropdown(
              'Trạng thái',
              selectedValue,
              ['', 'OPEN', 'PROCESSING', 'DELAY', 'PROCESSED', 'CLOSED'],
              (value) => {
                setState(() {
                  selectedValue = value;
                })
              },
            ),
            ElevatedButton(onPressed: startFilter, child: Text('Lọc'))
          ],
        ),
      );

  buidDropdown(title, selectedvalue, items, selected) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
              color: Colors.grey.shade100,
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
          )
        ],
      );

  getDropDownItem(items) => items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
          ),
        );
      }).toList();
}
