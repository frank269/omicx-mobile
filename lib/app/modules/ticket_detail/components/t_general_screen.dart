import 'package:flutter/material.dart';
import '/app/data/models/models.dart';
import 'package:intl/intl.dart';

class TGeneralScreen extends StatelessWidget {
  final Ticket item;
  const TGeneralScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                buildRow('Trạng thái:', checkStatus(item.status)),
                buildRow('Loại ticket:', checkType(item.ticketType)),
                buildRow('Mức độ ưu tiên:', checkPriority(item.priority)),
                buildRow(
                    'Hạn hoàn thành:',
                    item.completedDate == null
                        ? ''
                        : DateFormat('dd-MM-yyyy HH:mm:ss').format(
                            DateTime.parse(item.completedDate ??
                                DateTime.now().toString()))),
                buildRow('Người xử lý:', item.agentAssignee),
                buildRow('Nhóm xử lý:', item.groupProcessing),
                buildRow('Người tạo:', item.creationUser),
                buildRow(
                    'ngày tạo:',
                    item.creationDate == null
                        ? ''
                        : DateFormat('dd-MM-yyyy HH:mm:ss').format(
                            DateTime.parse(item.creationDate ??
                                DateTime.now().toString()))),
                buildRow(
                    'Ngày cập nhật gần nhất:',
                    item.lastUpdateDate == null
                        ? ''
                        : DateFormat('dd-MM-yyyy HH:mm:ss').format(
                            DateTime.parse(item.lastUpdateDate ??
                                DateTime.now().toString()))),
                buildRow('Đánh giá ticket:', '0'),
              ],
            ),
          ],
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

  checkStatus(status) {
    switch (status) {
      case "OPEN":
        return "Mới";
      case "PROCESSING":
        return "Đang xử lý";
      case "DELAY":
        return "Trì hoãn";
      case "PROCESSED":
        return "Đã xử lý";
      case "CLOSED":
        return "Đóng";
      default:
        return "";
    }
  }

  checkType(type) {
    switch (type) {
      case "COMPLAIN":
        return "Phàn nàn / Khiếu nại";
      case "REQUEST_SUPPORT":
        return "Yêu cầu";
      case "FEEDBACK":
        return "Phản hồi / Góp ý";
      default:
        return "";
    }
  }

  checkPriority(priority) {
    switch (priority) {
      case 1:
        return "Thấp";
      case 2:
        return "Trung bình";
      case 3:
        return "Cao";
      default:
        return "";
    }
  }
}
