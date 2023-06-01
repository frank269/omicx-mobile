import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../call_history_controller.dart';
import '/app/data/models/models.dart';
import 'package:intl/intl.dart';

class CallHistoryItem extends StatelessWidget {
  CallHistoryItem({Key? key, required this.item}) : super(key: key);
  final CallHistory item;
  final callHistoryController = Get.find<CallHistoryController>();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Padding(
          padding: const EdgeInsets.only(
            top: 5.0,
            bottom: 3.0,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.contact != null
                          ? '${item.contact?.fullName}'
                          : (item.direction == 'IN_BOUND'
                              ? "${item.caller}"
                              : "${item.called}"),
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          item.direction == 'IN_BOUND'
                              ? Icons.call_received_outlined
                              : Icons.outbound_outlined,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(item.direction == 'IN_BOUND'
                            ? 'Cuộc gọi đến'
                            : 'Cuộc gọi đi'),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                        "${DateFormat('dd-MM-yyyy').format(DateTime.fromMillisecondsSinceEpoch(item.startTime ?? 0))}"),
                    Text(
                        '${DateFormat('HH:mm:ss').format(DateTime.fromMillisecondsSinceEpoch(item.startTime ?? 0))}'),
                  ],
                ),
              ),
            ],
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () => callHistoryController.call(item),
                        icon: Icon(
                          Icons.call,
                          size: 30,
                          color: Colors.green,
                        ),
                      ),
                      Text("Gọi")
                    ],
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () => callHistoryController.createTicket(item),
                        icon: Icon(
                          Icons.archive,
                          size: 30,
                          color: Colors.green,
                        ),
                      ),
                      Text("Tạo Ticket")
                    ],
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () => callHistoryController.viewDetail(item),
                        icon: Icon(
                          Icons.info_outline,
                          size: 30,
                          color: Colors.green,
                        ),
                      ),
                      Text("Chi tiết")
                    ],
                  ),
                  flex: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
