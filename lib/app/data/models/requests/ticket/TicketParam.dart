import 'dart:convert';

import 'package:flutter/foundation.dart';

class TicketParam {
  ColumnSort? columnSort;
  String? filterText;
  TicketFilterField ticketFilterField;
  int skipCount;
  int maxResultCount;
  TicketParam({
    this.columnSort,
    this.filterText,
    required this.ticketFilterField,
    required this.skipCount,
    required this.maxResultCount,
  });

  TicketParam copyWith({
    ColumnSort? columnSort,
    String? filterText,
    TicketFilterField? ticketFilterField,
    int? skipCount,
    int? maxResultCount,
  }) {
    return TicketParam(
      columnSort: columnSort ?? this.columnSort,
      filterText: filterText ?? this.filterText,
      ticketFilterField: ticketFilterField ?? this.ticketFilterField,
      skipCount: skipCount ?? this.skipCount,
      maxResultCount: maxResultCount ?? this.maxResultCount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'columnSort': columnSort?.toMap(),
      'filterText': filterText,
      'ticketFilterField': ticketFilterField.toMap(),
      'skipCount': skipCount,
      'maxResultCount': maxResultCount,
    };
  }

  factory TicketParam.fromMap(Map<String, dynamic> map) {
    return TicketParam(
      columnSort: ColumnSort.fromMap(map['columnSort']),
      filterText: map['filterText'],
      ticketFilterField: TicketFilterField.fromMap(map['ticketFilterField']),
      skipCount: map['skipCount'],
      maxResultCount: map['maxResultCount'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TicketParam.fromJson(String source) =>
      TicketParam.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TicketParam(columnSort: $columnSort, filterText: $filterText, ticketFilterField: $ticketFilterField, skipCount: $skipCount, maxResultCount: $maxResultCount)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TicketParam &&
        other.columnSort == columnSort &&
        other.filterText == filterText &&
        other.ticketFilterField == ticketFilterField &&
        other.skipCount == skipCount &&
        other.maxResultCount == maxResultCount;
  }

  @override
  int get hashCode {
    return columnSort.hashCode ^
        filterText.hashCode ^
        ticketFilterField.hashCode ^
        skipCount.hashCode ^
        maxResultCount.hashCode;
  }
}

class ColumnSort {
  String? field;
  int? order;
  ColumnSort({
    this.field,
    this.order,
  });

  ColumnSort copyWith({
    String? field,
    int? order,
  }) {
    return ColumnSort(
      field: field ?? this.field,
      order: order ?? this.order,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'field': field,
      'order': order,
    };
  }

  factory ColumnSort.fromMap(Map<String, dynamic> map) {
    return ColumnSort(
      field: map['field'],
      order: map['order'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ColumnSort.fromJson(String source) =>
      ColumnSort.fromMap(json.decode(source));

  @override
  String toString() => 'ColumnSort(field: $field, order: $order)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ColumnSort && other.field == field && other.order == order;
  }

  @override
  int get hashCode => field.hashCode ^ order.hashCode;
}

class TicketFilterField {
  String? ticketCode;
  String? title;
  String? accountName;
  String? contact;
  List<String>? closedDate;
  List<String>? ticketType;
  List<String>? status;
  List<String>? statusSLA;
  List<String>? priority;
  List<String>? completedDate;
  List<int>? agentAssignee;
  List<int> groupProcessing;
  List<String>? lastUpdateDate;
  List<String>? creationDate;
  List<int>? creationUser;
  String? phoneNumber;
  List<int> campaigns;
  TicketFilterField({
    this.ticketCode,
    this.title,
    this.accountName,
    this.contact,
    this.closedDate,
    this.ticketType,
    this.status,
    this.statusSLA,
    this.priority,
    this.completedDate,
    this.agentAssignee,
    required this.groupProcessing,
    this.lastUpdateDate,
    this.creationDate,
    this.creationUser,
    this.phoneNumber,
    required this.campaigns,
  });

  TicketFilterField copyWith({
    String? ticketCode,
    String? title,
    String? accountName,
    String? contact,
    List<String>? closedDate,
    List<String>? ticketType,
    List<String>? status,
    List<String>? statusSLA,
    List<String>? priority,
    List<String>? completedDate,
    List<int>? agentAssignee,
    List<int>? groupProcessing,
    List<String>? lastUpdateDate,
    List<String>? creationDate,
    List<int>? creationUser,
    String? phoneNumber,
    List<int>? campaigns,
  }) {
    return TicketFilterField(
      ticketCode: ticketCode ?? this.ticketCode,
      title: title ?? this.title,
      accountName: accountName ?? this.accountName,
      contact: contact ?? this.contact,
      closedDate: closedDate ?? this.closedDate,
      ticketType: ticketType ?? this.ticketType,
      status: status ?? this.status,
      statusSLA: statusSLA ?? this.statusSLA,
      priority: priority ?? this.priority,
      completedDate: completedDate ?? this.completedDate,
      agentAssignee: agentAssignee ?? this.agentAssignee,
      groupProcessing: groupProcessing ?? this.groupProcessing,
      lastUpdateDate: lastUpdateDate ?? this.lastUpdateDate,
      creationDate: creationDate ?? this.creationDate,
      creationUser: creationUser ?? this.creationUser,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      campaigns: campaigns ?? this.campaigns,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ticketCode': ticketCode,
      'title': title,
      'accountName': accountName,
      'contact': contact,
      'closedDate': closedDate,
      'ticketType': ticketType,
      'status': status,
      'statusSLA': statusSLA,
      'priority': priority,
      'completedDate': completedDate,
      'agentAssignee': agentAssignee,
      'groupProcessing': groupProcessing,
      'lastUpdateDate': lastUpdateDate,
      'creationDate': creationDate,
      'creationUser': creationUser,
      'phoneNumber': phoneNumber,
      'campaigns': campaigns,
    };
  }

  factory TicketFilterField.fromMap(Map<String, dynamic> map) {
    return TicketFilterField(
      ticketCode: map['ticketCode'],
      title: map['title'],
      accountName: map['accountName'],
      contact: map['contact'],
      closedDate: List<String>.from(map['closedDate']),
      ticketType: List<String>.from(map['ticketType']),
      status: List<String>.from(map['status']),
      statusSLA: List<String>.from(map['statusSLA']),
      priority: List<String>.from(map['priority']),
      completedDate: List<String>.from(map['completedDate']),
      agentAssignee: List<int>.from(map['agentAssignee']),
      groupProcessing: List<int>.from(map['groupProcessing']),
      lastUpdateDate: List<String>.from(map['lastUpdateDate']),
      creationDate: List<String>.from(map['creationDate']),
      creationUser: List<int>.from(map['creationUser']),
      phoneNumber: map['phoneNumber'],
      campaigns: List<int>.from(map['campaigns']),
    );
  }

  String toJson() => json.encode(toMap());

  factory TicketFilterField.fromJson(String source) =>
      TicketFilterField.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TicketFilterField(ticketCode: $ticketCode, title: $title, accountName: $accountName, contact: $contact, closedDate: $closedDate, ticketType: $ticketType, status: $status, statusSLA: $statusSLA, priority: $priority, completedDate: $completedDate, agentAssignee: $agentAssignee, groupProcessing: $groupProcessing, lastUpdateDate: $lastUpdateDate, creationDate: $creationDate, creationUser: $creationUser, phoneNumber: $phoneNumber, campaigns: $campaigns)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TicketFilterField &&
        other.ticketCode == ticketCode &&
        other.title == title &&
        other.accountName == accountName &&
        other.contact == contact &&
        listEquals(other.closedDate, closedDate) &&
        listEquals(other.ticketType, ticketType) &&
        listEquals(other.status, status) &&
        listEquals(other.statusSLA, statusSLA) &&
        listEquals(other.priority, priority) &&
        listEquals(other.completedDate, completedDate) &&
        listEquals(other.agentAssignee, agentAssignee) &&
        listEquals(other.groupProcessing, groupProcessing) &&
        listEquals(other.lastUpdateDate, lastUpdateDate) &&
        listEquals(other.creationDate, creationDate) &&
        listEquals(other.creationUser, creationUser) &&
        other.phoneNumber == phoneNumber &&
        listEquals(other.campaigns, campaigns);
  }

  @override
  int get hashCode {
    return ticketCode.hashCode ^
        title.hashCode ^
        accountName.hashCode ^
        contact.hashCode ^
        closedDate.hashCode ^
        ticketType.hashCode ^
        status.hashCode ^
        statusSLA.hashCode ^
        priority.hashCode ^
        completedDate.hashCode ^
        agentAssignee.hashCode ^
        groupProcessing.hashCode ^
        lastUpdateDate.hashCode ^
        creationDate.hashCode ^
        creationUser.hashCode ^
        phoneNumber.hashCode ^
        campaigns.hashCode;
  }
}
