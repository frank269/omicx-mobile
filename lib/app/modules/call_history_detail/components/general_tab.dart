import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '/app/data/models/models.dart';

class GeneralTab extends StatelessWidget {
  final CallHistory item;
  const GeneralTab({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/ticket_box.png',
                    fit: BoxFit.cover,
                    width: 30,
                    // height: 1000,
                  ),
                  Text("Thông tin chung"),
                  Icon(
                    Icons.call,
                    size: 30,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.email,
                    size: 30,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 30,
                    color: Colors.blue,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Table(
                columnWidths: const <int, TableColumnWidth>{
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(2),
                },
                children: [
                  buildRow('Cuộc gọi từ:', item.caller),
                  buildRow('Cuộc gọi đến:', item.called),
                  buildRow('Thời lượng:', item.duration),
                  buildRow(
                      'Thời gian bắt đầu:',
                      DateFormat('dd-MM-yyyy HH:mm:ss').format(
                          DateTime.fromMillisecondsSinceEpoch(
                              item.startTime ?? 0))),
                  buildRow(
                      'Thời gian kết thúc:',
                      DateFormat('dd-MM-yyyy HH:mm:ss').format(
                          DateTime.fromMillisecondsSinceEpoch(
                              item.endTime ?? 0))),
                  buildRow('Thời gian chờ:', item.waitTime),
                  buildRow('Lịch sử bấm phím:', item.dtmf),
                  buildRow(
                      'Hướng cuộc gọi:',
                      item.direction == 'OUT_BOUND'
                          ? 'Cuộc gọi đi'
                          : 'Cuộc gọi đến'),
                  buildRow(
                      'Loại cuộc gọi:',
                      getCallResult(
                          item.direction, item.callStatus, item.dtmf)),
                  buildRow('Người kết thúc cuộc gọi:',
                      item.agent?.drop == true ? "Agent" : "Khách hàng"),
                  buildRow(
                      'Lý do nhỡ:',
                      getCallStatus(item.direction, item.callStatus,
                          item.statusResult, item.reason)),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.sticky_note_2,
                    color: Colors.blue.shade200,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Ghi chú cuộc gọi')
                ],
              ),
              Container(
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey.shade100,
                ),
                child: Text('${item.notes}'),
              )
            ],
          ),
        ),
      ),
    );
  }

  buildRow(title, value) => TableRow(
        children: [
          Container(
            height: 40,
            child: Text(title),
          ),
          Container(
            height: 40,
            child: Text(value == null ? '' : '$value'),
          ),
        ],
      );

  getCallResult(direction, callStatus, dtmf) {
    switch (direction) {
      case 'IN_BOUND':
        if (callStatus == 'HANDLED' ||
            callStatus == 'SELF_SERVICE' && !dtmf.isNullOrEmpty()) {
          return 'Thành công';
        }
        return 'Nhỡ';
      case 'OUT_BOUND':
        if (callStatus == 'HANDLED' ||
            callStatus == 'SELF_SERVICE' && !dtmf.isNullOrEmpty()) {
          return 'Thành công';
        }
        return 'Không thành công';
      default:
        return '';
    }
  }

  getCallStatus(direction, callStatus, statusResult, reasonCall) {
    var reason = "";
    switch (callStatus) {
      case "NOT_HANDLED":
        reason = reasonCall.toString();
        break;
      case "HANDLED":
        switch (direction) {
          case "IN_BOUND":
            reason = "HANDLED";
            break;
          case "OUT_BOUND":
            reason = statusResult.toString();
        }
        break;
    }
    switch (direction) {
      case "IN_BOUND":
        if (callStatus == "HANDLED") return "Kết nối thành công";
        switch (reason) {
          case "IVR":
            return "Nhỡ IVR";
          case "QUEUE":
            return "Nhỡ hàng chờ";
          case "RING_NO_ANSWER":
            return "Nhỡ hàng chờ";
          case "SHORT_RING":
            return "Đổ chuông quá ngắn";
          case "SHORT":
            return "Dập máy quá sớm";
          default:
            return "";
        }

      case "OUT_BOUND":
        if (callStatus == "HANDLED")
          switch (reason) {
            case "KET_NOI_THANH_CONG":
              return "Kết nối thành công";
            case "HEN_GOI_LAI":
              return "Hẹn gọi lại";
            case "NHAM_SO":
              return "Nhầm số";
            default:
              return "";
          }

        switch (reason) {
          case "BUSY":
            return "Máy bận";
          case "NOT_CONNECTED":
            return "Không nghe máy";
          case "UNALLOCATED":
            return "Sai số";
          case "SHORT":
            return "Dập máy quá sớm";
          case "SHORT_RING":
            return "Đổ chuông quá ngắn";
          default:
            return "";
        }

      default:
        return "";
    }
  }
}
