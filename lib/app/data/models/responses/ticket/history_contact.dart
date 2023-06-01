import 'dart:convert';

import 'package:flutter/foundation.dart';

class HistoryContactInList {
  List<HistoryContact?>? getHistoryContactInTicketDtos;
  HistoryContactInList({
    this.getHistoryContactInTicketDtos,
  });

  HistoryContactInList copyWith({
    List<HistoryContact?>? getHistoryContactInTicketDtos,
  }) {
    return HistoryContactInList(
      getHistoryContactInTicketDtos:
          getHistoryContactInTicketDtos ?? this.getHistoryContactInTicketDtos,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'getHistoryContactInTicketDtos':
          getHistoryContactInTicketDtos?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory HistoryContactInList.fromMap(Map<String, dynamic> map) {
    return HistoryContactInList(
      getHistoryContactInTicketDtos:
          map['getHistoryContactInTicketDtos'] == null
              ? null
              : List<HistoryContact?>.from(map['getHistoryContactInTicketDtos']
                  ?.map((x) => HistoryContact?.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory HistoryContactInList.fromJson(String source) =>
      HistoryContactInList.fromMap(json.decode(source));

  @override
  String toString() =>
      'HistoryContactInList(getHistoryContactInTicketDtos: $getHistoryContactInTicketDtos)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HistoryContactInList &&
        listEquals(
            other.getHistoryContactInTicketDtos, getHistoryContactInTicketDtos);
  }

  @override
  int get hashCode => getHistoryContactInTicketDtos.hashCode;
}

class HistoryContact {
  String? creationTime;
  String? channelType;
  String? caller;
  String? listener;
  String? phoneNumberCaller;
  String? phoneNumberListener;
  String? result;
  String? description;
  int? directionCallType;
  String? recordUrl;
  String? dialogId;
  String? conversationId;
  String? agentName;
  String? applicationName;
  String? contact;
  String? socialNameContact;
  int? totalMessage;
  List<String?>? firstConversation;
  String? channelSource;
  int? directionChatType;
  String? callIdMongoDb;
  String? ciscoCallId;
  String? ticketCreator;
  int? surveyScore;
  String? campaignName;
  String? surveyRecordingFile;
  int? campaignId;
  String? campaignCode;
  HistoryContact({
    this.creationTime,
    this.channelType,
    this.caller,
    this.listener,
    this.phoneNumberCaller,
    this.phoneNumberListener,
    this.result,
    this.description,
    this.directionCallType,
    this.recordUrl,
    this.dialogId,
    this.conversationId,
    this.agentName,
    this.applicationName,
    this.contact,
    this.socialNameContact,
    this.totalMessage,
    this.firstConversation,
    this.channelSource,
    this.directionChatType,
    this.callIdMongoDb,
    this.ciscoCallId,
    this.ticketCreator,
    this.surveyScore,
    this.campaignName,
    this.surveyRecordingFile,
    this.campaignId,
    this.campaignCode,
  });

  HistoryContact copyWith({
    String? creationTime,
    String? channelType,
    String? caller,
    String? listener,
    String? phoneNumberCaller,
    String? phoneNumberListener,
    String? result,
    String? description,
    int? directionCallType,
    String? recordUrl,
    String? dialogId,
    String? conversationId,
    String? agentName,
    String? applicationName,
    String? contact,
    String? socialNameContact,
    int? totalMessage,
    List<String?>? firstConversation,
    String? channelSource,
    int? directionChatType,
    String? callIdMongoDb,
    String? ciscoCallId,
    String? ticketCreator,
    int? surveyScore,
    String? campaignName,
    String? surveyRecordingFile,
    int? campaignId,
    String? campaignCode,
  }) {
    return HistoryContact(
      creationTime: creationTime ?? this.creationTime,
      channelType: channelType ?? this.channelType,
      caller: caller ?? this.caller,
      listener: listener ?? this.listener,
      phoneNumberCaller: phoneNumberCaller ?? this.phoneNumberCaller,
      phoneNumberListener: phoneNumberListener ?? this.phoneNumberListener,
      result: result ?? this.result,
      description: description ?? this.description,
      directionCallType: directionCallType ?? this.directionCallType,
      recordUrl: recordUrl ?? this.recordUrl,
      dialogId: dialogId ?? this.dialogId,
      conversationId: conversationId ?? this.conversationId,
      agentName: agentName ?? this.agentName,
      applicationName: applicationName ?? this.applicationName,
      contact: contact ?? this.contact,
      socialNameContact: socialNameContact ?? this.socialNameContact,
      totalMessage: totalMessage ?? this.totalMessage,
      firstConversation: firstConversation ?? this.firstConversation,
      channelSource: channelSource ?? this.channelSource,
      directionChatType: directionChatType ?? this.directionChatType,
      callIdMongoDb: callIdMongoDb ?? this.callIdMongoDb,
      ciscoCallId: ciscoCallId ?? this.ciscoCallId,
      ticketCreator: ticketCreator ?? this.ticketCreator,
      surveyScore: surveyScore ?? this.surveyScore,
      campaignName: campaignName ?? this.campaignName,
      surveyRecordingFile: surveyRecordingFile ?? this.surveyRecordingFile,
      campaignId: campaignId ?? this.campaignId,
      campaignCode: campaignCode ?? this.campaignCode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'creationTime': creationTime,
      'channelType': channelType,
      'caller': caller,
      'listener': listener,
      'phoneNumberCaller': phoneNumberCaller,
      'phoneNumberListener': phoneNumberListener,
      'result': result,
      'description': description,
      'directionCallType': directionCallType,
      'recordUrl': recordUrl,
      'dialogId': dialogId,
      'conversationId': conversationId,
      'agentName': agentName,
      'applicationName': applicationName,
      'contact': contact,
      'socialNameContact': socialNameContact,
      'totalMessage': totalMessage,
      'firstConversation': firstConversation?.map((x) => x).toList(),
      'channelSource': channelSource,
      'directionChatType': directionChatType,
      'callIdMongoDb': callIdMongoDb,
      'ciscoCallId': ciscoCallId,
      'ticketCreator': ticketCreator,
      'surveyScore': surveyScore,
      'campaignName': campaignName,
      'surveyRecordingFile': surveyRecordingFile,
      'campaignId': campaignId,
      'campaignCode': campaignCode,
    };
  }

  factory HistoryContact.fromMap(Map<String, dynamic> map) {
    return HistoryContact(
      creationTime: map['creationTime'],
      channelType: map['channelType'],
      caller: map['caller'],
      listener: map['listener'],
      phoneNumberCaller: map['phoneNumberCaller'],
      phoneNumberListener: map['phoneNumberListener'],
      result: map['result'],
      description: map['description'],
      directionCallType: map['directionCallType'],
      recordUrl: map['recordUrl'],
      dialogId: map['dialogId'],
      conversationId: map['conversationId'],
      agentName: map['agentName'],
      applicationName: map['applicationName'],
      contact: map['contact'],
      socialNameContact: map['socialNameContact'],
      totalMessage: map['totalMessage'],
      firstConversation: map['firstConversation'] == null
          ? null
          : List<String?>.from(map['firstConversation']?.map((x) => x)),
      channelSource: map['channelSource'],
      directionChatType: map['directionChatType'],
      callIdMongoDb: map['callIdMongoDb'],
      ciscoCallId: map['ciscoCallId'],
      ticketCreator: map['ticketCreator'],
      surveyScore: map['surveyScore'],
      campaignName: map['campaignName'],
      surveyRecordingFile: map['surveyRecordingFile'],
      campaignId: map['campaignId'],
      campaignCode: map['campaignCode'],
    );
  }

  String toJson() => json.encode(toMap());

  factory HistoryContact.fromJson(String source) =>
      HistoryContact.fromMap(json.decode(source));

  @override
  String toString() {
    return 'HistoryContact(creationTime: $creationTime, channelType: $channelType, caller: $caller, listener: $listener, phoneNumberCaller: $phoneNumberCaller, phoneNumberListener: $phoneNumberListener, result: $result, description: $description, directionCallType: $directionCallType, recordUrl: $recordUrl, dialogId: $dialogId, conversationId: $conversationId, agentName: $agentName, applicationName: $applicationName, contact: $contact, socialNameContact: $socialNameContact, totalMessage: $totalMessage, firstConversation: $firstConversation, channelSource: $channelSource, directionChatType: $directionChatType, callIdMongoDb: $callIdMongoDb, ciscoCallId: $ciscoCallId, ticketCreator: $ticketCreator, surveyScore: $surveyScore, campaignName: $campaignName, surveyRecordingFile: $surveyRecordingFile, campaignId: $campaignId, campaignCode: $campaignCode)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HistoryContact &&
        other.creationTime == creationTime &&
        other.channelType == channelType &&
        other.caller == caller &&
        other.listener == listener &&
        other.phoneNumberCaller == phoneNumberCaller &&
        other.phoneNumberListener == phoneNumberListener &&
        other.result == result &&
        other.description == description &&
        other.directionCallType == directionCallType &&
        other.recordUrl == recordUrl &&
        other.dialogId == dialogId &&
        other.conversationId == conversationId &&
        other.agentName == agentName &&
        other.applicationName == applicationName &&
        other.contact == contact &&
        other.socialNameContact == socialNameContact &&
        other.totalMessage == totalMessage &&
        listEquals(other.firstConversation, firstConversation) &&
        other.channelSource == channelSource &&
        other.directionChatType == directionChatType &&
        other.callIdMongoDb == callIdMongoDb &&
        other.ciscoCallId == ciscoCallId &&
        other.ticketCreator == ticketCreator &&
        other.surveyScore == surveyScore &&
        other.campaignName == campaignName &&
        other.surveyRecordingFile == surveyRecordingFile &&
        other.campaignId == campaignId &&
        other.campaignCode == campaignCode;
  }

  @override
  int get hashCode {
    return creationTime.hashCode ^
        channelType.hashCode ^
        caller.hashCode ^
        listener.hashCode ^
        phoneNumberCaller.hashCode ^
        phoneNumberListener.hashCode ^
        result.hashCode ^
        description.hashCode ^
        directionCallType.hashCode ^
        recordUrl.hashCode ^
        dialogId.hashCode ^
        conversationId.hashCode ^
        agentName.hashCode ^
        applicationName.hashCode ^
        contact.hashCode ^
        socialNameContact.hashCode ^
        totalMessage.hashCode ^
        firstConversation.hashCode ^
        channelSource.hashCode ^
        directionChatType.hashCode ^
        callIdMongoDb.hashCode ^
        ciscoCallId.hashCode ^
        ticketCreator.hashCode ^
        surveyScore.hashCode ^
        campaignName.hashCode ^
        surveyRecordingFile.hashCode ^
        campaignId.hashCode ^
        campaignCode.hashCode;
  }
}
