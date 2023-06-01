import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/app/data/models/models.dart';
import '/app/data/services/services.dart';
import 'dashboard_repository.dart';

class DashboardController extends GetxController {
  final _dashboardRepository = DashboardRepository();
  final _dbService = Get.find<DbService>();
  DashboardController() {
    loadData();
  }
  loadData() async {
    final params = DashBoardParam(
        agentId: _dbService.currentUser?.userId ?? 0, tenantId: 24);
    var agentInbound = await _dashboardRepository.getAgentInbound(params);
    var agentOutbound = await _dashboardRepository.getAgentOutbound(params);
    var agentTask = await _dashboardRepository.getAgentTask(params);
    var agentTickets = await _dashboardRepository.getAgentTicket(params);
    dashboardPages.clear();
    dashboardPages.add(DashboardItem(
      agentInbound.totals,
      agentInbound.completedCalls,
      agentInbound.missedCalls,
      agentInbound.talkTime,
    ));
    dashboardPages.add(DashboardItem(
      agentOutbound.totals,
      agentOutbound.completedCalls,
      agentOutbound.missedCalls,
      agentOutbound.talkTime,
    ));
    dashboardPages.add(DashboardItem(
      agentTickets.closedTicket,
      agentTask.assignedTickets,
      agentTask.participatedCampaigns,
      agentTask.assignedInteractCards,
    ));

    update();
  }

  var selectedPageIndex = 0.obs;
  var pageController = PageController();

  var dashboardPages = [
    DashboardItem(
      0,
      0,
      0,
      0,
    ),
    DashboardItem(
      0,
      0,
      0,
      0,
    ),
    DashboardItem(
      0,
      0,
      0,
      0,
    ),
  ];
}
