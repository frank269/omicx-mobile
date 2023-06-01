import 'dart:convert';

class CreateTicketParam {
  String? service;
  String? title;
  String? ticketType;
  String? channelSource;
  String? status;
  String? phoneNumber;
  int? priority;
  int? contactId;
  int? accountId;
  int? agentGroupId;
  int? agentId;
  String? note;
  String? conversationId;
  String? contactHistoryId;
  String? channelType;
  int? callId;
  String? missingCallId;
  bool? fromMissCall;
  String? contactName;
  String? phoneNumberContact;
  int? ciscoCallId;
  int? interactCardId;
  CreateTicketParam({
    this.service,
    this.title,
    this.ticketType,
    this.channelSource,
    this.status,
    this.phoneNumber,
    this.priority,
    this.contactId,
    this.accountId,
    this.agentGroupId,
    this.agentId,
    this.note,
    this.conversationId,
    this.contactHistoryId,
    this.channelType,
    this.callId,
    this.missingCallId,
    this.fromMissCall,
    this.contactName,
    this.phoneNumberContact,
    this.ciscoCallId,
    this.interactCardId,
  });

  CreateTicketParam copyWith({
    String? service,
    String? title,
    String? ticketType,
    String? channelSource,
    String? status,
    String? phoneNumber,
    int? priority,
    int? contactId,
    int? accountId,
    int? agentGroupId,
    int? agentId,
    String? note,
    String? conversationId,
    String? contactHistoryId,
    String? channelType,
    int? callId,
    String? missingCallId,
    bool? fromMissCall,
    String? contactName,
    String? phoneNumberContact,
    int? ciscoCallId,
    int? interactCardId,
  }) {
    return CreateTicketParam(
      service: service ?? this.service,
      title: title ?? this.title,
      ticketType: ticketType ?? this.ticketType,
      channelSource: channelSource ?? this.channelSource,
      status: status ?? this.status,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      priority: priority ?? this.priority,
      contactId: contactId ?? this.contactId,
      accountId: accountId ?? this.accountId,
      agentGroupId: agentGroupId ?? this.agentGroupId,
      agentId: agentId ?? this.agentId,
      note: note ?? this.note,
      conversationId: conversationId ?? this.conversationId,
      contactHistoryId: contactHistoryId ?? this.contactHistoryId,
      channelType: channelType ?? this.channelType,
      callId: callId ?? this.callId,
      missingCallId: missingCallId ?? this.missingCallId,
      fromMissCall: fromMissCall ?? this.fromMissCall,
      contactName: contactName ?? this.contactName,
      phoneNumberContact: phoneNumberContact ?? this.phoneNumberContact,
      ciscoCallId: ciscoCallId ?? this.ciscoCallId,
      interactCardId: interactCardId ?? this.interactCardId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'service': service,
      'title': title,
      'ticketType': ticketType,
      'channelSource': channelSource,
      'status': status,
      'phoneNumber': phoneNumber,
      'priority': priority,
      'contactId': contactId,
      'accountId': accountId,
      'agentGroupId': agentGroupId,
      'agentId': agentId,
      'note': note,
      'conversationId': conversationId,
      'contactHistoryId': contactHistoryId,
      'channelType': channelType,
      'callId': callId,
      'missingCallId': missingCallId,
      'fromMissCall': fromMissCall,
      'contactName': contactName,
      'phoneNumberContact': phoneNumberContact,
      'ciscoCallId': ciscoCallId,
      'interactCardId': interactCardId,
    };
  }

  factory CreateTicketParam.fromMap(Map<String, dynamic> map) {
    return CreateTicketParam(
      service: map['service'],
      title: map['title'],
      ticketType: map['ticketType'],
      channelSource: map['channelSource'],
      status: map['status'],
      phoneNumber: map['phoneNumber'],
      priority: map['priority'],
      contactId: map['contactId'],
      accountId: map['accountId'],
      agentGroupId: map['agentGroupId'],
      agentId: map['agentId'],
      note: map['note'],
      conversationId: map['conversationId'],
      contactHistoryId: map['contactHistoryId'],
      channelType: map['channelType'],
      callId: map['callId'],
      missingCallId: map['missingCallId'],
      fromMissCall: map['fromMissCall'],
      contactName: map['contactName'],
      phoneNumberContact: map['phoneNumberContact'],
      ciscoCallId: map['ciscoCallId'],
      interactCardId: map['interactCardId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CreateTicketParam.fromJson(String source) =>
      CreateTicketParam.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CreateTicketParam(service: $service, title: $title, ticketType: $ticketType, channelSource: $channelSource, status: $status, phoneNumber: $phoneNumber, priority: $priority, contactId: $contactId, accountId: $accountId, agentGroupId: $agentGroupId, agentId: $agentId, note: $note, conversationId: $conversationId, contactHistoryId: $contactHistoryId, channelType: $channelType, callId: $callId, missingCallId: $missingCallId, fromMissCall: $fromMissCall, contactName: $contactName, phoneNumberContact: $phoneNumberContact, ciscoCallId: $ciscoCallId, interactCardId: $interactCardId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CreateTicketParam &&
        other.service == service &&
        other.title == title &&
        other.ticketType == ticketType &&
        other.channelSource == channelSource &&
        other.status == status &&
        other.phoneNumber == phoneNumber &&
        other.priority == priority &&
        other.contactId == contactId &&
        other.accountId == accountId &&
        other.agentGroupId == agentGroupId &&
        other.agentId == agentId &&
        other.note == note &&
        other.conversationId == conversationId &&
        other.contactHistoryId == contactHistoryId &&
        other.channelType == channelType &&
        other.callId == callId &&
        other.missingCallId == missingCallId &&
        other.fromMissCall == fromMissCall &&
        other.contactName == contactName &&
        other.phoneNumberContact == phoneNumberContact &&
        other.ciscoCallId == ciscoCallId &&
        other.interactCardId == interactCardId;
  }

  @override
  int get hashCode {
    return service.hashCode ^
        title.hashCode ^
        ticketType.hashCode ^
        channelSource.hashCode ^
        status.hashCode ^
        phoneNumber.hashCode ^
        priority.hashCode ^
        contactId.hashCode ^
        accountId.hashCode ^
        agentGroupId.hashCode ^
        agentId.hashCode ^
        note.hashCode ^
        conversationId.hashCode ^
        contactHistoryId.hashCode ^
        channelType.hashCode ^
        callId.hashCode ^
        missingCallId.hashCode ^
        fromMissCall.hashCode ^
        contactName.hashCode ^
        phoneNumberContact.hashCode ^
        ciscoCallId.hashCode ^
        interactCardId.hashCode;
  }
}
