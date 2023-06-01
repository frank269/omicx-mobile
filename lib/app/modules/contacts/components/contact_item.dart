import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers.dart';
import '/app/data/models/models.dart';

class ContactItem extends StatelessWidget {
  ContactItem({Key? key, required this.item}) : super(key: key);
  final Contact item;
  final contactsController = Get.find<ContactsController>();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: ListTile(
          minLeadingWidth: 20,
          leading: Icon(
            Icons.account_circle_rounded,
            color: Colors.green,
            size: 40,
          ),
          title: Text(
            '${removePostfix(item.fullName ?? '')}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text('${removePostfix(item.phoneNumber1 ?? '')}'),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 5.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () => contactsController.call(item),
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
                // Expanded(
                //   child: Column(
                //     children: [
                //       IconButton(
                //         onPressed: () => contactsController.createTicket(item),
                //         icon: Icon(
                //           Icons.archive,
                //           size: 30,
                //           color: Colors.green,
                //         ),
                //       ),
                //       Text("Tạo Tickket")
                //     ],
                //   ),
                //   flex: 1,
                // ),
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () =>
                            contactsController.duplicateTicket(item),
                        icon: Icon(
                          Icons.sticky_note_2,
                          size: 30,
                          color: Colors.green,
                        ),
                      ),
                      Text("Nhân bản")
                    ],
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () => contactsController.viewDetail(item),
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

  String removePostfix(String s) {
    if (int.tryParse(s) != null) {
      if (s.length > 5) return s.substring(0, s.length - 5) + '*****';
      if (s.length > 2) return s.substring(0, s.length - 2) + '**';
    }
    return s;
  }
}
