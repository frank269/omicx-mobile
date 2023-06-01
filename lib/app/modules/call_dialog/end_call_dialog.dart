import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:omicx_v2/app/core/core.dart';
import 'end_call_dialog_controller.dart';

class EndCallDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(5),
      backgroundColor: Colors.lightBlueAccent.shade100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: GetBuilder<EndCallDialogController>(
        init: EndCallDialogController(),
        builder: (controller) => buildWidget(controller),
      ),
    );
  }

  Widget buildWidget(controller) {
    return Stack(
      children: [
        EndCallWidget(controller),
        Positioned(
          top: 10,
          right: 10,
          child: IconButton(
              onPressed: controller.closePopup,
              icon: Icon(
                Icons.remove,
              )),
        ),
      ],
    );
  }

  EndCallWidget(EndCallDialogController controller) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.account_circle_rounded,
                color: Colors.green,
                size: 100,
              ),
              SizedBox(height: 10),
              TextField(
                controller: controller.fullNameEdittingController,
                maxLines: 1,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 0,
                  ),
                  hintText: "Nhập tên khách hàng",
                ),
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(controller.phoneNumber,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 10),
              Text('Đã kết thúc',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 10),
              TextField(
                controller: controller.noteEdittingController,
                maxLines: 4,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue,
                  hintText: "Nhập ghi chú cuộc gọi",
                ),
              ),
              SizedBox(height: 10),
              buidDropdown(
                'Phân loại',
                controller.dropdownTypeValue,
                controller.dropdownTypeItems,
                controller.choosedType,
              ),
              SizedBox(height: 20),
              buidDropdown(
                'Kết quả *',
                controller.dropdownResultValue,
                controller.dropdownResultItems,
                controller.choosedResult,
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: controller.savePopup,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.save_outlined,
                    color: Colors.red,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
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
              color: Colors.blue.shade400,
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
              dropdownColor: Colors.lightBlue.shade200,
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
