import 'dart:convert';

import 'package:collection/collection.dart';

class Ticket {
  int? id;
  int? tenantId;
  String? ticketCode;
  String? title;
  String? contact;
  String? agentAssignee;
  String? status;
  int? priority;
  String? completedDate;
  String? ticketType;
  String? groupProcessing;
  String? creationDate;
  String? lastUpdateDate;
  String? creationUser;
  String? accountName;
  String? valueTicketTypeUpdated;
  String? valueStatusUpdated;
  int? priorityUpdated;
  UserGroupDropdown? userGroupDropdown;
  UserGroupDropdown? agentAssigneeDropdown;
  UserGroupDropdown? contactDropdown;
  UserGroupDropdown? accountDropdown;
  String? channelSource;
  String? note;
  double? hoursRemaining;
  double? timesRemaining;
  String? closedDate;
  List<ListAttachFile?>? listAttachFile;
  List<int>? relationTicket;
  int? assigneeAgentId;
  bool? isFollow;
  int? totalScore;
  int? scoredById;
  String? scoredByName;
  String? phoneNumber;
  Ticket({
    this.id,
    this.tenantId,
    this.ticketCode,
    this.title,
    this.contact,
    this.agentAssignee,
    this.status,
    this.priority,
    this.completedDate,
    this.ticketType,
    this.groupProcessing,
    this.creationDate,
    this.lastUpdateDate,
    this.creationUser,
    this.accountName,
    this.valueTicketTypeUpdated,
    this.valueStatusUpdated,
    this.priorityUpdated,
    this.userGroupDropdown,
    this.agentAssigneeDropdown,
    this.contactDropdown,
    this.accountDropdown,
    this.channelSource,
    this.note,
    this.hoursRemaining,
    this.timesRemaining,
    this.closedDate,
    this.listAttachFile,
    this.relationTicket,
    this.assigneeAgentId,
    this.isFollow,
    this.totalScore,
    this.scoredById,
    this.scoredByName,
    this.phoneNumber,
  });

  Ticket copyWith({
    int? id,
    int? tenantId,
    String? ticketCode,
    String? title,
    String? contact,
    String? agentAssignee,
    String? status,
    int? priority,
    String? completedDate,
    String? ticketType,
    String? groupProcessing,
    String? creationDate,
    String? lastUpdateDate,
    String? creationUser,
    String? accountName,
    String? valueTicketTypeUpdated,
    String? valueStatusUpdated,
    int? priorityUpdated,
    UserGroupDropdown? userGroupDropdown,
    UserGroupDropdown? agentAssigneeDropdown,
    UserGroupDropdown? contactDropdown,
    UserGroupDropdown? accountDropdown,
    String? channelSource,
    String? note,
    double? hoursRemaining,
    double? timesRemaining,
    String? closedDate,
    List<ListAttachFile?>? listAttachFile,
    List<int>? relationTicket,
    int? assigneeAgentId,
    bool? isFollow,
    int? totalScore,
    int? scoredById,
    String? scoredByName,
    String? phoneNumber,
  }) {
    return Ticket(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      ticketCode: ticketCode ?? this.ticketCode,
      title: title ?? this.title,
      contact: contact ?? this.contact,
      agentAssignee: agentAssignee ?? this.agentAssignee,
      status: status ?? this.status,
      priority: priority ?? this.priority,
      completedDate: completedDate ?? this.completedDate,
      ticketType: ticketType ?? this.ticketType,
      groupProcessing: groupProcessing ?? this.groupProcessing,
      creationDate: creationDate ?? this.creationDate,
      lastUpdateDate: lastUpdateDate ?? this.lastUpdateDate,
      creationUser: creationUser ?? this.creationUser,
      accountName: accountName ?? this.accountName,
      valueTicketTypeUpdated:
          valueTicketTypeUpdated ?? this.valueTicketTypeUpdated,
      valueStatusUpdated: valueStatusUpdated ?? this.valueStatusUpdated,
      priorityUpdated: priorityUpdated ?? this.priorityUpdated,
      userGroupDropdown: userGroupDropdown ?? this.userGroupDropdown,
      agentAssigneeDropdown:
          agentAssigneeDropdown ?? this.agentAssigneeDropdown,
      contactDropdown: contactDropdown ?? this.contactDropdown,
      accountDropdown: accountDropdown ?? this.accountDropdown,
      channelSource: channelSource ?? this.channelSource,
      note: note ?? this.note,
      hoursRemaining: hoursRemaining ?? this.hoursRemaining,
      timesRemaining: timesRemaining ?? this.timesRemaining,
      closedDate: closedDate ?? this.closedDate,
      listAttachFile: listAttachFile ?? this.listAttachFile,
      relationTicket: relationTicket ?? this.relationTicket,
      assigneeAgentId: assigneeAgentId ?? this.assigneeAgentId,
      isFollow: isFollow ?? this.isFollow,
      totalScore: totalScore ?? this.totalScore,
      scoredById: scoredById ?? this.scoredById,
      scoredByName: scoredByName ?? this.scoredByName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'tenantId': tenantId,
      'ticketCode': ticketCode,
      'title': title,
      'contact': contact,
      'agentAssignee': agentAssignee,
      'status': status,
      'priority': priority,
      'completedDate': completedDate,
      'ticketType': ticketType,
      'groupProcessing': groupProcessing,
      'creationDate': creationDate,
      'lastUpdateDate': lastUpdateDate,
      'creationUser': creationUser,
      'accountName': accountName,
      'valueTicketTypeUpdated': valueTicketTypeUpdated,
      'valueStatusUpdated': valueStatusUpdated,
      'priorityUpdated': priorityUpdated,
      'userGroupDropdown': userGroupDropdown?.toMap(),
      'agentAssigneeDropdown': agentAssigneeDropdown?.toMap(),
      'contactDropdown': contactDropdown?.toMap(),
      'accountDropdown': accountDropdown?.toMap(),
      'channelSource': channelSource,
      'note': note,
      'hoursRemaining': hoursRemaining,
      'timesRemaining': timesRemaining,
      'closedDate': closedDate,
      'listAttachFile': listAttachFile?.map((x) => x?.toMap()).toList(),
      'relationTicket': relationTicket,
      'assigneeAgentId': assigneeAgentId,
      'isFollow': isFollow,
      'totalScore': totalScore,
      'scoredById': scoredById,
      'scoredByName': scoredByName,
      'phoneNumber': phoneNumber,
    };
  }

  factory Ticket.fromMap(Map<String, dynamic> map) {
    return Ticket(
      id: map['id'],
      tenantId: map['tenantId'],
      ticketCode: map['ticketCode'],
      title: map['title'],
      contact: map['contact'],
      agentAssignee: map['agentAssignee'],
      status: map['status'],
      priority: map['priority'],
      completedDate: map['completedDate'],
      ticketType: map['ticketType'],
      groupProcessing: map['groupProcessing'],
      creationDate: map['creationDate'],
      lastUpdateDate: map['lastUpdateDate'],
      creationUser: map['creationUser'],
      accountName: map['accountName'],
      valueTicketTypeUpdated: map['valueTicketTypeUpdated'],
      valueStatusUpdated: map['valueStatusUpdated'],
      priorityUpdated: map['priorityUpdated'],
      userGroupDropdown: UserGroupDropdown.fromMap(map['userGroupDropdown']),
      agentAssigneeDropdown:
          UserGroupDropdown.fromMap(map['agentAssigneeDropdown']),
      contactDropdown: UserGroupDropdown.fromMap(map['contactDropdown']),
      accountDropdown: UserGroupDropdown.fromMap(map['accountDropdown']),
      channelSource: map['channelSource'],
      note: map['note'],
      hoursRemaining: map['hoursRemaining'],
      timesRemaining: map['timesRemaining'],
      closedDate: map['closedDate'],
      listAttachFile: List<ListAttachFile?>.from(
          map['listAttachFile']?.map((x) => ListAttachFile?.fromMap(x))),
      relationTicket: map['relationTicket'] == null
          ? map['relationTicket']
          : List<int>.from(map['relationTicket']),
      assigneeAgentId: map['assigneeAgentId'],
      isFollow: map['isFollow'],
      totalScore: map['totalScore'],
      scoredById: map['scoredById'],
      scoredByName: map['scoredByName'],
      phoneNumber: map['phoneNumber'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Ticket.fromJson(String source) => Ticket.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Ticket(id: $id, tenantId: $tenantId, ticketCode: $ticketCode, title: $title, contact: $contact, agentAssignee: $agentAssignee, status: $status, priority: $priority, completedDate: $completedDate, ticketType: $ticketType, groupProcessing: $groupProcessing, creationDate: $creationDate, lastUpdateDate: $lastUpdateDate, creationUser: $creationUser, accountName: $accountName, valueTicketTypeUpdated: $valueTicketTypeUpdated, valueStatusUpdated: $valueStatusUpdated, priorityUpdated: $priorityUpdated, userGroupDropdown: $userGroupDropdown, agentAssigneeDropdown: $agentAssigneeDropdown, contactDropdown: $contactDropdown, accountDropdown: $accountDropdown, channelSource: $channelSource, note: $note, hoursRemaining: $hoursRemaining, timesRemaining: $timesRemaining, closedDate: $closedDate, listAttachFile: $listAttachFile, relationTicket: $relationTicket, assigneeAgentId: $assigneeAgentId, isFollow: $isFollow, totalScore: $totalScore, scoredById: $scoredById, scoredByName: $scoredByName, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Ticket &&
        other.id == id &&
        other.tenantId == tenantId &&
        other.ticketCode == ticketCode &&
        other.title == title &&
        other.contact == contact &&
        other.agentAssignee == agentAssignee &&
        other.status == status &&
        other.priority == priority &&
        other.completedDate == completedDate &&
        other.ticketType == ticketType &&
        other.groupProcessing == groupProcessing &&
        other.creationDate == creationDate &&
        other.lastUpdateDate == lastUpdateDate &&
        other.creationUser == creationUser &&
        other.accountName == accountName &&
        other.valueTicketTypeUpdated == valueTicketTypeUpdated &&
        other.valueStatusUpdated == valueStatusUpdated &&
        other.priorityUpdated == priorityUpdated &&
        other.userGroupDropdown == userGroupDropdown &&
        other.agentAssigneeDropdown == agentAssigneeDropdown &&
        other.contactDropdown == contactDropdown &&
        other.accountDropdown == accountDropdown &&
        other.channelSource == channelSource &&
        other.note == note &&
        other.hoursRemaining == hoursRemaining &&
        other.timesRemaining == timesRemaining &&
        other.closedDate == closedDate &&
        listEquals(other.listAttachFile, listAttachFile) &&
        listEquals(other.relationTicket, relationTicket) &&
        other.assigneeAgentId == assigneeAgentId &&
        other.isFollow == isFollow &&
        other.totalScore == totalScore &&
        other.scoredById == scoredById &&
        other.scoredByName == scoredByName &&
        other.phoneNumber == phoneNumber;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        tenantId.hashCode ^
        ticketCode.hashCode ^
        title.hashCode ^
        contact.hashCode ^
        agentAssignee.hashCode ^
        status.hashCode ^
        priority.hashCode ^
        completedDate.hashCode ^
        ticketType.hashCode ^
        groupProcessing.hashCode ^
        creationDate.hashCode ^
        lastUpdateDate.hashCode ^
        creationUser.hashCode ^
        accountName.hashCode ^
        valueTicketTypeUpdated.hashCode ^
        valueStatusUpdated.hashCode ^
        priorityUpdated.hashCode ^
        userGroupDropdown.hashCode ^
        agentAssigneeDropdown.hashCode ^
        contactDropdown.hashCode ^
        accountDropdown.hashCode ^
        channelSource.hashCode ^
        note.hashCode ^
        hoursRemaining.hashCode ^
        timesRemaining.hashCode ^
        closedDate.hashCode ^
        listAttachFile.hashCode ^
        relationTicket.hashCode ^
        assigneeAgentId.hashCode ^
        isFollow.hashCode ^
        totalScore.hashCode ^
        scoredById.hashCode ^
        scoredByName.hashCode ^
        phoneNumber.hashCode;
  }
}

class UserGroupDropdown {
  int? value;
  String? displayName;
  int? groupId;
  List<int>? groupIds;
  String? ticketType;
  UserGroupDropdown({
    this.value,
    this.displayName,
    this.groupId,
    this.groupIds,
    this.ticketType,
  });

  UserGroupDropdown copyWith({
    int? value,
    String? displayName,
    int? groupId,
    List<int>? groupIds,
    String? ticketType,
  }) {
    return UserGroupDropdown(
      value: value ?? this.value,
      displayName: displayName ?? this.displayName,
      groupId: groupId ?? this.groupId,
      groupIds: groupIds ?? this.groupIds,
      ticketType: ticketType ?? this.ticketType,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value': value,
      'displayName': displayName,
      'groupId': groupId,
      'groupIds': groupIds,
      'ticketType': ticketType,
    };
  }

  factory UserGroupDropdown.fromMap(Map<String, dynamic>? map) {
    if (map == null) return UserGroupDropdown();
    return UserGroupDropdown(
      value: map['value'],
      displayName: map['displayName'],
      groupId: map['groupId'],
      groupIds:
          map['groupIds'] == null ? null : List<int>.from(map['groupIds']),
      ticketType: map['ticketType'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserGroupDropdown.fromJson(String source) =>
      UserGroupDropdown.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserGroupDropdown(value: $value, displayName: $displayName, groupId: $groupId, groupIds: $groupIds, ticketType: $ticketType)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is UserGroupDropdown &&
        other.value == value &&
        other.displayName == displayName &&
        other.groupId == groupId &&
        listEquals(other.groupIds, groupIds) &&
        other.ticketType == ticketType;
  }

  @override
  int get hashCode {
    return value.hashCode ^
        displayName.hashCode ^
        groupId.hashCode ^
        groupIds.hashCode ^
        ticketType.hashCode;
  }
}

class ListAttachFile {
  int? id;
  String? fileName;
  String? fileType;
  int? ticketId;
  int? leadId;
  ListAttachFile({
    this.id,
    this.fileName,
    this.fileType,
    this.ticketId,
    this.leadId,
  });

  ListAttachFile copyWith({
    int? id,
    String? fileName,
    String? fileType,
    int? ticketId,
    int? leadId,
  }) {
    return ListAttachFile(
      id: id ?? this.id,
      fileName: fileName ?? this.fileName,
      fileType: fileType ?? this.fileType,
      ticketId: ticketId ?? this.ticketId,
      leadId: leadId ?? this.leadId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fileName': fileName,
      'fileType': fileType,
      'ticketId': ticketId,
      'leadId': leadId,
    };
  }

  factory ListAttachFile.fromMap(Map<String, dynamic>? map) {
    if (map == null) return ListAttachFile();
    return ListAttachFile(
      id: map['id'],
      fileName: map['fileName'],
      fileType: map['fileType'],
      ticketId: map['ticketId'],
      leadId: map['leadId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ListAttachFile.fromJson(String source) =>
      ListAttachFile.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ListAttachFile(id: $id, fileName: $fileName, fileType: $fileType, ticketId: $ticketId, leadId: $leadId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ListAttachFile &&
        other.id == id &&
        other.fileName == fileName &&
        other.fileType == fileType &&
        other.ticketId == ticketId &&
        other.leadId == leadId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        fileName.hashCode ^
        fileType.hashCode ^
        ticketId.hashCode ^
        leadId.hashCode;
  }
}
