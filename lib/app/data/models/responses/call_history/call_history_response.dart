import 'dart:convert';
import 'package:flutter/foundation.dart';

class CallHistory {
  int? startTime;
  int? endTime;
  int? callBackTime;
  String? dialedNumber;
  String? direction;
  String? callStatus;
  String? callId;
  String? caller;
  String? called;
  String? reason;
  int? waitTime;
  int? totalWaitTime;
  int? duration;
  int? score;
  String? scoreAttachment;
  String? notes;
  int? contactHistoryId;
  bool? hasSurvey;
  int? cdcCallId;
  String? statusResult;
  ContactCallHistory? contact;
  List<ReasonsCallHistory>? reasons;
  CallHistoryHistory? callHistory;
  AgentCallHistory? agent;
  UpdatedAgentCallHistory? updatedAgent;
  List<String>? dtmf;
  int? callManagerCallIds;
  List<TicketsCallHistory>? tickets;
  CampaignCallHistory? campaign;
  int? talkTime;
  ManualScoreCallHistory? manualScore;
  CallHistory({
    this.startTime,
    this.endTime,
    this.callBackTime,
    this.dialedNumber,
    this.direction,
    this.callStatus,
    this.callId,
    this.caller,
    this.called,
    this.reason,
    this.waitTime,
    this.totalWaitTime,
    this.duration,
    this.score,
    this.scoreAttachment,
    this.notes,
    this.contactHistoryId,
    this.hasSurvey,
    this.cdcCallId,
    this.statusResult,
    this.contact,
    this.reasons,
    this.agent,
    this.updatedAgent,
    this.dtmf,
    this.callManagerCallIds,
    this.tickets,
    this.campaign,
    this.talkTime,
    this.manualScore,
  });

  CallHistory copyWith({
    int? startTime,
    int? endTime,
    int? callBackTime,
    String? dialedNumber,
    String? direction,
    String? callStatus,
    String? callId,
    String? caller,
    String? called,
    String? reason,
    int? waitTime,
    int? totalWaitTime,
    int? duration,
    int? score,
    String? scoreAttachment,
    String? notes,
    int? contactHistoryId,
    bool? hasSurvey,
    int? cdcCallId,
    String? statusResult,
    ContactCallHistory? contact,
    List<ReasonsCallHistory>? reasons,
    AgentCallHistory? agent,
    UpdatedAgentCallHistory? updatedAgent,
    List<String>? dtmf,
    int? callManagerCallIds,
    List<TicketsCallHistory>? tickets,
    CampaignCallHistory? campaign,
    int? talkTime,
    ManualScoreCallHistory? manualScore,
  }) {
    return CallHistory(
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      callBackTime: callBackTime ?? this.callBackTime,
      dialedNumber: dialedNumber ?? this.dialedNumber,
      direction: direction ?? this.direction,
      callStatus: callStatus ?? this.callStatus,
      callId: callId ?? this.callId,
      caller: caller ?? this.caller,
      called: called ?? this.called,
      reason: reason ?? this.reason,
      waitTime: waitTime ?? this.waitTime,
      totalWaitTime: totalWaitTime ?? this.totalWaitTime,
      duration: duration ?? this.duration,
      score: score ?? this.score,
      scoreAttachment: scoreAttachment ?? this.scoreAttachment,
      notes: notes ?? this.notes,
      contactHistoryId: contactHistoryId ?? this.contactHistoryId,
      hasSurvey: hasSurvey ?? this.hasSurvey,
      cdcCallId: cdcCallId ?? this.cdcCallId,
      statusResult: statusResult ?? this.statusResult,
      contact: contact ?? this.contact,
      reasons: reasons ?? this.reasons,
      agent: agent ?? this.agent,
      updatedAgent: updatedAgent ?? this.updatedAgent,
      dtmf: dtmf ?? this.dtmf,
      callManagerCallIds: callManagerCallIds ?? this.callManagerCallIds,
      tickets: tickets ?? this.tickets,
      campaign: campaign ?? this.campaign,
      talkTime: talkTime ?? this.talkTime,
      manualScore: manualScore ?? this.manualScore,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'startTime': startTime,
      'endTime': endTime,
      'callBackTime': callBackTime,
      'dialedNumber': dialedNumber,
      'direction': direction,
      'callStatus': callStatus,
      'callId': callId,
      'caller': caller,
      'called': called,
      'reason': reason,
      'waitTime': waitTime,
      'totalWaitTime': totalWaitTime,
      'duration': duration,
      'score': score,
      'scoreAttachment': scoreAttachment,
      'notes': notes,
      'contactHistoryId': contactHistoryId,
      'hasSurvey': hasSurvey,
      'cdcCallId': cdcCallId,
      'statusResult': statusResult,
      'contact': contact?.toMap(),
      'reasons': reasons?.map((x) => x.toMap()).toList(),
      'agent': agent?.toMap(),
      'updatedAgent': updatedAgent?.toMap(),
      'dtmf': dtmf,
      'callManagerCallIds': callManagerCallIds,
      'tickets': tickets?.map((x) => x.toMap()).toList(),
      'campaign': campaign?.toMap(),
      'talkTime': talkTime,
      'manualScore': manualScore?.toMap(),
    };
  }

  factory CallHistory.fromMap(Map<String, dynamic>? map) {
    return CallHistory(
      startTime: map == null ? null : map['startTime'],
      endTime: map == null ? null : map['endTime'],
      callBackTime: map == null ? null : map['callBackTime'],
      dialedNumber: map == null ? null : map['dialedNumber'],
      direction: map == null ? null : map['direction'],
      callStatus: map == null ? null : map['callStatus'],
      callId: map == null ? null : map['callId'],
      caller: map == null ? null : map['caller'],
      called: map == null ? null : map['called'],
      reason: map == null ? null : map['reason'],
      waitTime: map == null ? null : map['waitTime'],
      totalWaitTime: map == null ? null : map['totalWaitTime'],
      duration: map == null ? null : map['duration'],
      score: map == null ? null : map['score'],
      scoreAttachment: map == null ? null : map['scoreAttachment'],
      notes: map == null ? null : map['notes'],
      contactHistoryId: map == null ? null : map['contactHistoryId'],
      hasSurvey: map == null ? null : map['hasSurvey'],
      cdcCallId: map == null ? null : map['cdcCallId'],
      statusResult: map == null ? null : map['statusResult'],
      contact: map == null
          ? null
          : (map['contact'] == null
              ? null
              : ContactCallHistory.fromMap(map['contact'])),
      reasons: map == null
          ? null
          : (map['reasons'] == null
              ? null
              : List<ReasonsCallHistory>.from(
                  map['reasons'].map((x) => ReasonsCallHistory.fromMap(x)))),
      agent: map == null ? null : AgentCallHistory.fromMap(map['agent']),
      updatedAgent: map == null
          ? null
          : UpdatedAgentCallHistory.fromMap(map['updatedAgent']),
      dtmf: map == null ? null : List<String>.from(map['dtmf']),
      callManagerCallIds: map == null ? null : map['callManagerCallIds'],
      tickets: map == null
          ? null
          : (map['tickets'] == null
              ? null
              : List<TicketsCallHistory>.from(
                  map['tickets'].map((x) => TicketsCallHistory.fromMap(x)))),
      campaign:
          map == null ? null : CampaignCallHistory.fromMap(map['campaign']),
      talkTime: map == null ? null : map['talkTime'],
      manualScore: map == null
          ? null
          : ManualScoreCallHistory.fromMap(map['manualScore']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CallHistory.fromJson(String source) =>
      CallHistory.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CallHistory(startTime: $startTime, endTime: $endTime, callBackTime: $callBackTime, dialedNumber: $dialedNumber, direction: $direction, callStatus: $callStatus, callId: $callId, caller: $caller, called: $called, reason: $reason, waitTime: $waitTime, totalWaitTime: $totalWaitTime, duration: $duration, score: $score, scoreAttachment: $scoreAttachment, notes: $notes, contactHistoryId: $contactHistoryId, hasSurvey: $hasSurvey, cdcCallId: $cdcCallId, statusResult: $statusResult, contact: $contact, reasons: $reasons, agent: $agent, updatedAgent: $updatedAgent, dtmf: $dtmf, callManagerCallIds: $callManagerCallIds, tickets: $tickets, campaign: $campaign, talkTime: $talkTime, manualScore: $manualScore)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CallHistory &&
        other.startTime == startTime &&
        other.endTime == endTime &&
        other.callBackTime == callBackTime &&
        other.dialedNumber == dialedNumber &&
        other.direction == direction &&
        other.callStatus == callStatus &&
        other.callId == callId &&
        other.caller == caller &&
        other.called == called &&
        other.reason == reason &&
        other.waitTime == waitTime &&
        other.totalWaitTime == totalWaitTime &&
        other.duration == duration &&
        other.score == score &&
        other.scoreAttachment == scoreAttachment &&
        other.notes == notes &&
        other.contactHistoryId == contactHistoryId &&
        other.hasSurvey == hasSurvey &&
        other.cdcCallId == cdcCallId &&
        other.statusResult == statusResult &&
        other.contact == contact &&
        listEquals(other.reasons, reasons) &&
        other.agent == agent &&
        other.updatedAgent == updatedAgent &&
        listEquals(other.dtmf, dtmf) &&
        other.callManagerCallIds == callManagerCallIds &&
        listEquals(other.tickets, tickets) &&
        other.campaign == campaign &&
        other.talkTime == talkTime &&
        other.manualScore == manualScore;
  }

  @override
  int get hashCode {
    return startTime.hashCode ^
        endTime.hashCode ^
        callBackTime.hashCode ^
        dialedNumber.hashCode ^
        direction.hashCode ^
        callStatus.hashCode ^
        callId.hashCode ^
        caller.hashCode ^
        called.hashCode ^
        reason.hashCode ^
        waitTime.hashCode ^
        totalWaitTime.hashCode ^
        duration.hashCode ^
        score.hashCode ^
        scoreAttachment.hashCode ^
        notes.hashCode ^
        contactHistoryId.hashCode ^
        hasSurvey.hashCode ^
        cdcCallId.hashCode ^
        statusResult.hashCode ^
        contact.hashCode ^
        reasons.hashCode ^
        agent.hashCode ^
        updatedAgent.hashCode ^
        dtmf.hashCode ^
        callManagerCallIds.hashCode ^
        tickets.hashCode ^
        campaign.hashCode ^
        talkTime.hashCode ^
        manualScore.hashCode;
  }
}

class ContactCallHistory {
  String? contactId;
  String? fullName;
  int? tenantContactId;
  String? vicePresident;
  ContactCallHistory({
    this.contactId,
    this.fullName,
    this.tenantContactId,
    this.vicePresident,
  });

  ContactCallHistory copyWith({
    String? contactId,
    String? fullName,
    int? tenantContactId,
    String? vicePresident,
  }) {
    return ContactCallHistory(
      contactId: contactId ?? this.contactId,
      fullName: fullName ?? this.fullName,
      tenantContactId: tenantContactId ?? this.tenantContactId,
      vicePresident: vicePresident ?? this.vicePresident,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'contactId': contactId,
      'fullName': fullName,
      'tenantContactId': tenantContactId,
      'vicePresident': vicePresident,
    };
  }

  factory ContactCallHistory.fromMap(Map<String, dynamic>? map) {
    return ContactCallHistory(
      contactId: map == null ? null : map['contactId'],
      fullName: map == null ? null : map['fullName'],
      tenantContactId: map == null ? null : map['tenantContactId'],
      vicePresident: map == null ? null : map['vicePresident'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactCallHistory.fromJson(String source) =>
      ContactCallHistory.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ContactCallHistory(contactId: $contactId, fullName: $fullName, tenantContactId: $tenantContactId, vicePresident: $vicePresident)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ContactCallHistory &&
        other.contactId == contactId &&
        other.fullName == fullName &&
        other.tenantContactId == tenantContactId &&
        other.vicePresident == vicePresident;
  }

  @override
  int get hashCode {
    return contactId.hashCode ^
        fullName.hashCode ^
        tenantContactId.hashCode ^
        vicePresident.hashCode;
  }
}

class ReasonsCallHistory {
  String? agentId;
  int? tenantAgentId;
  String? reason;
  int? reasonTime;
  String? firstname;
  String? lastname;
  String? fullName;
  String? username;
  ReasonsCallHistory({
    this.agentId,
    this.tenantAgentId,
    this.reason,
    this.reasonTime,
    this.firstname,
    this.lastname,
    this.fullName,
    this.username,
  });

  ReasonsCallHistory copyWith({
    String? agentId,
    int? tenantAgentId,
    String? reason,
    int? reasonTime,
    String? firstname,
    String? lastname,
    String? fullName,
    String? username,
  }) {
    return ReasonsCallHistory(
      agentId: agentId ?? this.agentId,
      tenantAgentId: tenantAgentId ?? this.tenantAgentId,
      reason: reason ?? this.reason,
      reasonTime: reasonTime ?? this.reasonTime,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      fullName: fullName ?? this.fullName,
      username: username ?? this.username,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'agentId': agentId,
      'tenantAgentId': tenantAgentId,
      'reason': reason,
      'reasonTime': reasonTime,
      'firstname': firstname,
      'lastname': lastname,
      'fullName': fullName,
      'username': username,
    };
  }

  factory ReasonsCallHistory.fromMap(Map<String, dynamic>? map) {
    return ReasonsCallHistory(
      agentId: map == null ? null : map['agentId'],
      tenantAgentId: map == null ? null : map['tenantAgentId'],
      reason: map == null ? null : map['reason'],
      reasonTime: map == null ? null : map['reasonTime'],
      firstname: map == null ? null : map['firstname'],
      lastname: map == null ? null : map['lastname'],
      fullName: map == null ? null : map['fullName'],
      username: map == null ? null : map['username'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ReasonsCallHistory.fromJson(String source) =>
      ReasonsCallHistory.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ReasonsCallHistory(agentId: $agentId, tenantAgentId: $tenantAgentId, reason: $reason, reasonTime: $reasonTime, firstname: $firstname, lastname: $lastname, fullName: $fullName, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ReasonsCallHistory &&
        other.agentId == agentId &&
        other.tenantAgentId == tenantAgentId &&
        other.reason == reason &&
        other.reasonTime == reasonTime &&
        other.firstname == firstname &&
        other.lastname == lastname &&
        other.fullName == fullName &&
        other.username == username;
  }

  @override
  int get hashCode {
    return agentId.hashCode ^
        tenantAgentId.hashCode ^
        reason.hashCode ^
        reasonTime.hashCode ^
        firstname.hashCode ^
        lastname.hashCode ^
        fullName.hashCode ^
        username.hashCode;
  }
}

class CallHistoryHistory {
  int? cdcContactHistoryId;
  String? notes;
  CallHistoryHistory({
    this.cdcContactHistoryId,
    this.notes,
  });

  CallHistoryHistory copyWith({
    int? cdcContactHistoryId,
    String? notes,
  }) {
    return CallHistoryHistory(
      cdcContactHistoryId: cdcContactHistoryId ?? this.cdcContactHistoryId,
      notes: notes ?? this.notes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cdcContactHistoryId': cdcContactHistoryId,
      'notes': notes,
    };
  }

  factory CallHistoryHistory.fromMap(Map<String, dynamic>? map) {
    return CallHistoryHistory(
      cdcContactHistoryId: map == null ? null : map['cdcContactHistoryId'],
      notes: map == null ? null : map['notes'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CallHistoryHistory.fromJson(String source) =>
      CallHistoryHistory.fromMap(json.decode(source));

  @override
  String toString() =>
      'CallHistoryHistory(cdcContactHistoryId: $cdcContactHistoryId, notes: $notes)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CallHistoryHistory &&
        other.cdcContactHistoryId == cdcContactHistoryId &&
        other.notes == notes;
  }

  @override
  int get hashCode => cdcContactHistoryId.hashCode ^ notes.hashCode;
}

class AgentCallHistory {
  String? agentId;
  int? talkTime;
  bool? drop;
  int? tenantAgentId;
  String? firstname;
  String? lastname;
  String? username;
  String? fullName;
  String? recordingFile;
  List<AgentGroupsCallHistory>? agentGroups;
  int? callLegId;
  AgentCallHistory({
    this.agentId,
    this.talkTime,
    this.drop,
    this.tenantAgentId,
    this.firstname,
    this.lastname,
    this.username,
    this.fullName,
    this.recordingFile,
    this.agentGroups,
    this.callLegId,
  });

  AgentCallHistory copyWith({
    String? agentId,
    int? talkTime,
    bool? drop,
    int? tenantAgentId,
    String? firstname,
    String? lastname,
    String? username,
    String? fullName,
    String? recordingFile,
    List<AgentGroupsCallHistory>? agentGroups,
    int? callLegId,
  }) {
    return AgentCallHistory(
      agentId: agentId ?? this.agentId,
      talkTime: talkTime ?? this.talkTime,
      drop: drop ?? this.drop,
      tenantAgentId: tenantAgentId ?? this.tenantAgentId,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      username: username ?? this.username,
      fullName: fullName ?? this.fullName,
      recordingFile: recordingFile ?? this.recordingFile,
      agentGroups: agentGroups ?? this.agentGroups,
      callLegId: callLegId ?? this.callLegId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'agentId': agentId,
      'talkTime': talkTime,
      'drop': drop,
      'tenantAgentId': tenantAgentId,
      'firstname': firstname,
      'lastname': lastname,
      'username': username,
      'fullName': fullName,
      'recordingFile': recordingFile,
      'agentGroups': agentGroups?.map((x) => x.toMap()).toList(),
      'callLegId': callLegId,
    };
  }

  factory AgentCallHistory.fromMap(Map<String, dynamic>? map) {
    return AgentCallHistory(
      agentId: map == null ? null : map['agentId'],
      talkTime: map == null ? null : map['talkTime'],
      drop: map == null ? false : map['drop'],
      tenantAgentId: map == null ? null : map['tenantAgentId'],
      firstname: map == null ? null : map['firstname'],
      lastname: map == null ? null : map['lastname'],
      username: map == null ? null : map['username'],
      fullName: map == null ? null : map['fullName'],
      recordingFile: map == null ? null : map['recordingFile'],
      agentGroups: map == null
          ? null
          : (map['agentGroups'] == null
              ? null
              : List<AgentGroupsCallHistory>.from(map['agentGroups']
                  .map((x) => AgentGroupsCallHistory.fromMap(x)))),
      callLegId: map == null ? null : map['callLegId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AgentCallHistory.fromJson(String source) =>
      AgentCallHistory.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AgentCallHistory(agentId: $agentId, talkTime: $talkTime, drop: $drop, tenantAgentId: $tenantAgentId, firstname: $firstname, lastname: $lastname, username: $username, fullName: $fullName, recordingFile: $recordingFile, agentGroups: $agentGroups, callLegId: $callLegId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AgentCallHistory &&
        other.agentId == agentId &&
        other.talkTime == talkTime &&
        other.drop == drop &&
        other.tenantAgentId == tenantAgentId &&
        other.firstname == firstname &&
        other.lastname == lastname &&
        other.username == username &&
        other.fullName == fullName &&
        other.recordingFile == recordingFile &&
        listEquals(other.agentGroups, agentGroups) &&
        other.callLegId == callLegId;
  }

  @override
  int get hashCode {
    return agentId.hashCode ^
        talkTime.hashCode ^
        drop.hashCode ^
        tenantAgentId.hashCode ^
        firstname.hashCode ^
        lastname.hashCode ^
        username.hashCode ^
        fullName.hashCode ^
        recordingFile.hashCode ^
        agentGroups.hashCode ^
        callLegId.hashCode;
  }
}

class AgentGroupsCallHistory {
  String? agentGroupName;
  int? cdcAgentGroupId;
  AgentGroupsCallHistory({
    this.agentGroupName,
    this.cdcAgentGroupId,
  });

  AgentGroupsCallHistory copyWith({
    String? agentGroupName,
    int? cdcAgentGroupId,
  }) {
    return AgentGroupsCallHistory(
      agentGroupName: agentGroupName ?? this.agentGroupName,
      cdcAgentGroupId: cdcAgentGroupId ?? this.cdcAgentGroupId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'agentGroupName': agentGroupName,
      'cdcAgentGroupId': cdcAgentGroupId,
    };
  }

  factory AgentGroupsCallHistory.fromMap(Map<String, dynamic>? map) {
    return AgentGroupsCallHistory(
      agentGroupName: map == null ? null : map['agentGroupName'],
      cdcAgentGroupId: map == null ? null : map['cdcAgentGroupId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AgentGroupsCallHistory.fromJson(String source) =>
      AgentGroupsCallHistory.fromMap(json.decode(source));

  @override
  String toString() =>
      'AgentGroupsCallHistory(agentGroupName: $agentGroupName, cdcAgentGroupId: $cdcAgentGroupId)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AgentGroupsCallHistory &&
        other.agentGroupName == agentGroupName &&
        other.cdcAgentGroupId == cdcAgentGroupId;
  }

  @override
  int get hashCode => agentGroupName.hashCode ^ cdcAgentGroupId.hashCode;
}

class UpdatedAgentCallHistory {
  int? tenantAgentId;
  String? firstname;
  String? lastname;
  String? username;
  String? fullName;
  int? updatedTime;
  UpdatedAgentCallHistory({
    this.tenantAgentId,
    this.firstname,
    this.lastname,
    this.username,
    this.fullName,
    this.updatedTime,
  });

  UpdatedAgentCallHistory copyWith({
    int? tenantAgentId,
    String? firstname,
    String? lastname,
    String? username,
    String? fullName,
    int? updatedTime,
  }) {
    return UpdatedAgentCallHistory(
      tenantAgentId: tenantAgentId ?? this.tenantAgentId,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      username: username ?? this.username,
      fullName: fullName ?? this.fullName,
      updatedTime: updatedTime ?? this.updatedTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'tenantAgentId': tenantAgentId,
      'firstname': firstname,
      'lastname': lastname,
      'username': username,
      'fullName': fullName,
      'updatedTime': updatedTime,
    };
  }

  factory UpdatedAgentCallHistory.fromMap(Map<String, dynamic>? map) {
    return UpdatedAgentCallHistory(
      tenantAgentId: map == null ? null : map['tenantAgentId'],
      firstname: map == null ? null : map['firstname'],
      lastname: map == null ? null : map['lastname'],
      username: map == null ? null : map['username'],
      fullName: map == null ? null : map['fullName'],
      updatedTime: map == null ? null : map['updatedTime'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UpdatedAgentCallHistory.fromJson(String source) =>
      UpdatedAgentCallHistory.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UpdatedAgentCallHistory(tenantAgentId: $tenantAgentId, firstname: $firstname, lastname: $lastname, username: $username, fullName: $fullName, updatedTime: $updatedTime)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UpdatedAgentCallHistory &&
        other.tenantAgentId == tenantAgentId &&
        other.firstname == firstname &&
        other.lastname == lastname &&
        other.username == username &&
        other.fullName == fullName &&
        other.updatedTime == updatedTime;
  }

  @override
  int get hashCode {
    return tenantAgentId.hashCode ^
        firstname.hashCode ^
        lastname.hashCode ^
        username.hashCode ^
        fullName.hashCode ^
        updatedTime.hashCode;
  }
}

class TicketsCallHistory {
  String? ticketCode;
  int? cdcTicketId;
  TicketsCallHistory({
    this.ticketCode,
    this.cdcTicketId,
  });

  TicketsCallHistory copyWith({
    String? ticketCode,
    int? cdcTicketId,
  }) {
    return TicketsCallHistory(
      ticketCode: ticketCode ?? this.ticketCode,
      cdcTicketId: cdcTicketId ?? this.cdcTicketId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ticketCode': ticketCode,
      'cdcTicketId': cdcTicketId,
    };
  }

  factory TicketsCallHistory.fromMap(Map<String, dynamic>? map) {
    return TicketsCallHistory(
      ticketCode: map == null ? null : map['ticketCode'],
      cdcTicketId: map == null ? null : map['cdcTicketId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TicketsCallHistory.fromJson(String source) =>
      TicketsCallHistory.fromMap(json.decode(source));

  @override
  String toString() =>
      'TicketsCallHistory(ticketCode: $ticketCode, cdcTicketId: $cdcTicketId)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TicketsCallHistory &&
        other.ticketCode == ticketCode &&
        other.cdcTicketId == cdcTicketId;
  }

  @override
  int get hashCode => ticketCode.hashCode ^ cdcTicketId.hashCode;
}

class CampaignCallHistory {
  String? id;
  int? cdcCampaignId;
  String? campaignName;
  String? campaignCode;
  CampaignCallHistory({
    this.id,
    this.cdcCampaignId,
    this.campaignName,
    this.campaignCode,
  });

  CampaignCallHistory copyWith({
    String? id,
    int? cdcCampaignId,
    String? campaignName,
    String? campaignCode,
  }) {
    return CampaignCallHistory(
      id: id ?? this.id,
      cdcCampaignId: cdcCampaignId ?? this.cdcCampaignId,
      campaignName: campaignName ?? this.campaignName,
      campaignCode: campaignCode ?? this.campaignCode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'cdcCampaignId': cdcCampaignId,
      'campaignName': campaignName,
      'campaignCode': campaignCode,
    };
  }

  factory CampaignCallHistory.fromMap(Map<String, dynamic>? map) {
    return CampaignCallHistory(
      id: map == null ? null : map['id'],
      cdcCampaignId: map == null ? null : map['cdcCampaignId'],
      campaignName: map == null ? null : map['campaignName'],
      campaignCode: map == null ? null : map['campaignCode'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CampaignCallHistory.fromJson(String source) =>
      CampaignCallHistory.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CampaignCallHistory(id: $id, cdcCampaignId: $cdcCampaignId, campaignName: $campaignName, campaignCode: $campaignCode)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CampaignCallHistory &&
        other.id == id &&
        other.cdcCampaignId == cdcCampaignId &&
        other.campaignName == campaignName &&
        other.campaignCode == campaignCode;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        cdcCampaignId.hashCode ^
        campaignName.hashCode ^
        campaignCode.hashCode;
  }
}

class ManualScoreCallHistory {
  int? score;
  ScoreAgentManualScoreCallHistory? scoreAgent;
  ManualScoreCallHistory({
    this.score,
    this.scoreAgent,
  });

  ManualScoreCallHistory copyWith({
    int? score,
    ScoreAgentManualScoreCallHistory? scoreAgent,
  }) {
    return ManualScoreCallHistory(
      score: score ?? this.score,
      scoreAgent: scoreAgent ?? this.scoreAgent,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'score': score,
      'scoreAgent': scoreAgent?.toMap(),
    };
  }

  factory ManualScoreCallHistory.fromMap(Map<String, dynamic>? map) {
    return ManualScoreCallHistory(
      score: map == null ? null : map['score'],
      scoreAgent: map == null
          ? null
          : ScoreAgentManualScoreCallHistory.fromMap(map['scoreAgent']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ManualScoreCallHistory.fromJson(String source) =>
      ManualScoreCallHistory.fromMap(json.decode(source));

  @override
  String toString() =>
      'ManualScoreCallHistory(score: $score, scoreAgent: $scoreAgent)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ManualScoreCallHistory &&
        other.score == score &&
        other.scoreAgent == scoreAgent;
  }

  @override
  int get hashCode => score.hashCode ^ scoreAgent.hashCode;
}

class ScoreAgentManualScoreCallHistory {
  int? cdcAgentId;
  int? cdcTenantId;
  String? fullName;
  String? username;
  ScoreAgentManualScoreCallHistory({
    this.cdcAgentId,
    this.cdcTenantId,
    this.fullName,
    this.username,
  });

  ScoreAgentManualScoreCallHistory copyWith({
    int? cdcAgentId,
    int? cdcTenantId,
    String? fullName,
    String? username,
  }) {
    return ScoreAgentManualScoreCallHistory(
      cdcAgentId: cdcAgentId ?? this.cdcAgentId,
      cdcTenantId: cdcTenantId ?? this.cdcTenantId,
      fullName: fullName ?? this.fullName,
      username: username ?? this.username,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cdcAgentId': cdcAgentId,
      'cdcTenantId': cdcTenantId,
      'fullName': fullName,
      'username': username,
    };
  }

  factory ScoreAgentManualScoreCallHistory.fromMap(Map<String, dynamic>? map) {
    return ScoreAgentManualScoreCallHistory(
      cdcAgentId: map == null ? null : map['cdcAgentId'],
      cdcTenantId: map == null ? null : map['cdcTenantId'],
      fullName: map == null ? null : map['fullName'],
      username: map == null ? null : map['username'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ScoreAgentManualScoreCallHistory.fromJson(String source) =>
      ScoreAgentManualScoreCallHistory.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ScoreAgentManualScoreCallHistory(cdcAgentId: $cdcAgentId, cdcTenantId: $cdcTenantId, fullName: $fullName, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ScoreAgentManualScoreCallHistory &&
        other.cdcAgentId == cdcAgentId &&
        other.cdcTenantId == cdcTenantId &&
        other.fullName == fullName &&
        other.username == username;
  }

  @override
  int get hashCode {
    return cdcAgentId.hashCode ^
        cdcTenantId.hashCode ^
        fullName.hashCode ^
        username.hashCode;
  }
}
