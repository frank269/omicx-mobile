import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/modules/controllers.dart';
import '/app/data/models/models.dart';

class TicketItem extends StatelessWidget {
  final Ticket item;
  TicketItem({Key? key, required this.item}) : super(key: key);
  final ticketController = Get.find<TicketController>();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: ListTile(
          minLeadingWidth: 10,
          leading: Text(item.id.toString()),
          title: Text(item.title.toString()),
          trailing: Text(item.status.toString()),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () => ticketController.call(item),
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
                        onPressed: () => ticketController.merge(item),
                        icon: Icon(
                          Icons.sticky_note_2,
                          size: 30,
                          color: Colors.green,
                        ),
                      ),
                      Text("Gộp")
                    ],
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () => ticketController.assign(item),
                        icon: Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.green,
                        ),
                      ),
                      Text("Phân công")
                    ],
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () => ticketController.viewDetail(item),
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
