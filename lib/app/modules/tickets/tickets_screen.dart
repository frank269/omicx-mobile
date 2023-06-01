import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:omicx_v2/app/modules/tickets/components/ticket_item.dart';
import '/app/core/core.dart';
import '/app/data/constants/constant.dart';
import 'tickets_controller.dart';

class TicketsScreen extends StatelessWidget {
  bool loadMore(controller, scrollInfo) {
    if (!controller.isbusy &&
        scrollInfo.metrics.pixels > scrollInfo.metrics.maxScrollExtent * 0.9) {
      controller.loadMore();
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TicketController>(
      builder: (controller) => Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: ticketsColor,
            title: Text(
              TextConstants.ticketsTitle,
              style: toolbarTextStyle,
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.sort,
                  color: Colors.white,
                ),
                onPressed: controller.filterTicket,
              ),
              IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: controller.addTicket,
              ),
            ],
          ),
          body: NotificationListener<ScrollNotification>(
            child: ListView.builder(
              itemCount: controller.listTickets.length,
              itemBuilder: (context, index) {
                return TicketItem(item: controller.listTickets[index]);
              },
            ),
            onNotification: (notification) =>
                loadMore(controller, notification),
          )),
    );
  }
}
