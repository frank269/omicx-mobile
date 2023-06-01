import 'dart:convert';

import 'package:collection/collection.dart';

class CreateContactHistory {
  int? callType;
  int? contactId;
  int? ticketId;
  CreateContactHistoryCall? call;
  ContactHistory? contactHistory;
  CreateContactHistory({
    this.callType,
    this.contactId,
    this.ticketId,
    this.contactHistory,
    this.call,
  });

  CreateContactHistory copyWith({
    int? callType,
    int? contactId,
    int? ticketId,
    ContactHistory? contactHistory,
    CreateContactHistoryCall? call,
  }) {
    return CreateContactHistory(
        callType: callType ?? this.callType,
        contactId: contactId ?? this.contactId,
        ticketId: ticketId ?? this.ticketId,
        contactHistory: contactHistory ?? this.contactHistory,
        call: call ?? this.call);
  }

  Map<String, dynamic> toMap() {
    return {
      'callType': callType,
      'contactId': contactId,
      'ticketId': ticketId,
      'contactHistory': contactHistory?.toMap(),
      'call': call?.toMap(),
    };
  }

  factory CreateContactHistory.fromMap(Map<String, dynamic> map) {
    return CreateContactHistory(
      callType: map['callType'],
      contactId: map['contactId'],
      ticketId: map['ticketId'],
      contactHistory: map['contactHistory'] == null
          ? null
          : ContactHistory.fromMap(map['contactHistory']),
      call: map['call'] == null
          ? null
          : CreateContactHistoryCall.fromMap(map['call']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CreateContactHistory.fromJson(String source) =>
      CreateContactHistory.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CreateContactHistory(callType: $callType, contactId: $contactId, ticketId: $ticketId, contactHistory: $contactHistory, call: $call)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CreateContactHistory &&
        other.callType == callType &&
        other.contactId == contactId &&
        other.ticketId == ticketId &&
        other.contactHistory == contactHistory;
  }

  @override
  int get hashCode {
    return callType.hashCode ^
        contactId.hashCode ^
        ticketId.hashCode ^
        contactHistory.hashCode;
  }
}

class ContactHistoryResponse {
  int? id;
  String? message;
  bool? status;
  CreateContactHistoryCall? call;
  ContactHistory? contactHistory;
  ContactHistoryResponse({
    this.id,
    this.message,
    this.status,
    this.call,
    this.contactHistory,
  });

  ContactHistoryResponse copyWith({
    int? id,
    String? message,
    bool? status,
    CreateContactHistoryCall? call,
    ContactHistory? contactHistory,
  }) {
    return ContactHistoryResponse(
      id: id ?? this.id,
      message: message ?? this.message,
      status: status ?? this.status,
      call: call ?? this.call,
      contactHistory: contactHistory ?? this.contactHistory,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'message': message,
      'status': status,
      'call': call?.toMap(),
      'contactHistory': contactHistory?.toMap(),
    };
  }

  factory ContactHistoryResponse.fromMap(Map<String, dynamic> map) {
    return ContactHistoryResponse(
      id: map['id'],
      message: map['message'],
      status: map['status'],
      call: map['call'] == null
          ? null
          : CreateContactHistoryCall.fromMap(map['call']),
      contactHistory: map['contactHistory'] == null
          ? null
          : ContactHistory.fromMap(map['contactHistory']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactHistoryResponse.fromJson(String source) =>
      ContactHistoryResponse.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ContactHistoryResponse(id: $id, message: $message, status: $status, call: $call, contactHistory: $contactHistory)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ContactHistoryResponse &&
        other.id == id &&
        other.message == message &&
        other.status == status &&
        other.call == call &&
        other.contactHistory == contactHistory;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        message.hashCode ^
        status.hashCode ^
        call.hashCode ^
        contactHistory.hashCode;
  }
}

class ContactHistory {
  int? tenantId;
  int? contactId;
  String? channelType;
  String? description;
  int? typeDetail;
  String? historyTime;
  String? startTime;
  String? endTime;
  String? creationTime;
  int? creatorUserId;
  String? phoneNumber;
  String? chanelId;
  int? status;
  String? dialogId;
  bool? isPicked;
  String? recordingUrl;
  int? missingQuantity;
  String? switchBoardNumber;
  String? branchNumber;
  String? ciscoCallId;
  int? agentId;
  String? agentDepartment;
  int? callId;
  int? callTypeId;
  int? score;
  int? scoredById;
  String? scoredByName;
  String? callRecordingUrl;
  List<Note?>? notes;
  List<CallScore?>? callScores;
  String? scoreNote;
  String? scoreErrorCode;
  String? agentName;
  String? fsCallId;
  int? id;
  ContactHistory({
    this.tenantId,
    this.contactId,
    this.channelType,
    this.description,
    this.typeDetail,
    this.historyTime,
    this.startTime,
    this.endTime,
    this.creationTime,
    this.creatorUserId,
    this.phoneNumber,
    this.chanelId,
    this.status,
    this.dialogId,
    this.isPicked,
    this.recordingUrl,
    this.missingQuantity,
    this.switchBoardNumber,
    this.branchNumber,
    this.ciscoCallId,
    this.agentId,
    this.agentDepartment,
    this.callId,
    this.callTypeId,
    this.score,
    this.scoredById,
    this.scoredByName,
    this.callRecordingUrl,
    this.notes,
    this.callScores,
    this.scoreNote,
    this.scoreErrorCode,
    this.agentName,
    this.fsCallId,
    this.id,
  });

  ContactHistory copyWith({
    int? tenantId,
    int? contactId,
    String? channelType,
    String? description,
    int? typeDetail,
    String? historyTime,
    String? startTime,
    String? endTime,
    String? creationTime,
    int? creatorUserId,
    String? phoneNumber,
    String? chanelId,
    int? status,
    String? dialogId,
    bool? isPicked,
    String? recordingUrl,
    int? missingQuantity,
    String? switchBoardNumber,
    String? branchNumber,
    String? ciscoCallId,
    int? agentId,
    String? agentDepartment,
    int? callId,
    int? callTypeId,
    int? score,
    int? scoredById,
    String? scoredByName,
    String? callRecordingUrl,
    List<Note?>? notes,
    List<CallScore?>? callScores,
    String? scoreNote,
    String? scoreErrorCode,
    String? agentName,
    String? fsCallId,
    int? id,
  }) {
    return ContactHistory(
      tenantId: tenantId ?? this.tenantId,
      contactId: contactId ?? this.contactId,
      channelType: channelType ?? this.channelType,
      description: description ?? this.description,
      typeDetail: typeDetail ?? this.typeDetail,
      historyTime: historyTime ?? this.historyTime,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      creationTime: creationTime ?? this.creationTime,
      creatorUserId: creatorUserId ?? this.creatorUserId,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      chanelId: chanelId ?? this.chanelId,
      status: status ?? this.status,
      dialogId: dialogId ?? this.dialogId,
      isPicked: isPicked ?? this.isPicked,
      recordingUrl: recordingUrl ?? this.recordingUrl,
      missingQuantity: missingQuantity ?? this.missingQuantity,
      switchBoardNumber: switchBoardNumber ?? this.switchBoardNumber,
      branchNumber: branchNumber ?? this.branchNumber,
      ciscoCallId: ciscoCallId ?? this.ciscoCallId,
      agentId: agentId ?? this.agentId,
      agentDepartment: agentDepartment ?? this.agentDepartment,
      callId: callId ?? this.callId,
      callTypeId: callTypeId ?? this.callTypeId,
      score: score ?? this.score,
      scoredById: scoredById ?? this.scoredById,
      scoredByName: scoredByName ?? this.scoredByName,
      callRecordingUrl: callRecordingUrl ?? this.callRecordingUrl,
      notes: notes ?? this.notes,
      callScores: callScores ?? this.callScores,
      scoreNote: scoreNote ?? this.scoreNote,
      scoreErrorCode: scoreErrorCode ?? this.scoreErrorCode,
      agentName: agentName ?? this.agentName,
      fsCallId: fsCallId ?? this.fsCallId,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'tenantId': tenantId,
      'contactId': contactId,
      'channelType': channelType,
      'description': description,
      'typeDetail': typeDetail,
      'historyTime': historyTime,
      'startTime': startTime,
      'endTime': endTime,
      'creationTime': creationTime,
      'creatorUserId': creatorUserId,
      'phoneNumber': phoneNumber,
      'chanelId': chanelId,
      'status': status,
      'dialogId': dialogId,
      'isPicked': isPicked,
      'recordingUrl': recordingUrl,
      'missingQuantity': missingQuantity,
      'switchBoardNumber': switchBoardNumber,
      'branchNumber': branchNumber,
      'ciscoCallId': ciscoCallId,
      'agentId': agentId,
      'agentDepartment': agentDepartment,
      'callId': callId,
      'callTypeId': callTypeId,
      'score': score,
      'scoredById': scoredById,
      'scoredByName': scoredByName,
      'callRecordingUrl': callRecordingUrl,
      'notes': notes?.map((x) => x?.toMap()).toList(),
      'callScores': callScores?.map((x) => x?.toMap()).toList(),
      'scoreNote': scoreNote,
      'scoreErrorCode': scoreErrorCode,
      'agentName': agentName,
      'fsCallId': fsCallId,
      'id': id,
    };
  }

  factory ContactHistory.fromMap(Map<String, dynamic> map) {
    return ContactHistory(
      tenantId: map['tenantId'],
      contactId: map['contactId'],
      channelType: map['channelType'],
      description: map['description'],
      typeDetail: map['typeDetail'],
      historyTime: map['historyTime'],
      startTime: map['startTime'],
      endTime: map['endTime'],
      creationTime: map['creationTime'],
      creatorUserId: map['creatorUserId'],
      phoneNumber: map['phoneNumber'],
      chanelId: map['chanelId'],
      status: map['status'],
      dialogId: map['dialogId'],
      isPicked: map['isPicked'],
      recordingUrl: map['recordingUrl'],
      missingQuantity: map['missingQuantity'],
      switchBoardNumber: map['switchBoardNumber'],
      branchNumber: map['branchNumber'],
      ciscoCallId: map['ciscoCallId'],
      agentId: map['agentId'],
      agentDepartment: map['agentDepartment'],
      callId: map['callId'],
      callTypeId: map['callTypeId'],
      score: map['score'],
      scoredById: map['scoredById'],
      scoredByName: map['scoredByName'],
      callRecordingUrl: map['callRecordingUrl'],
      notes: map['notes'] == null
          ? null
          : List<Note?>.from(map['notes']?.map((x) => Note?.fromMap(x))),
      callScores: map['callScores'] == null
          ? null
          : List<CallScore?>.from(
              map['callScores']?.map((x) => CallScore?.fromMap(x))),
      scoreNote: map['scoreNote'],
      scoreErrorCode: map['scoreErrorCode'],
      agentName: map['agentName'],
      fsCallId: map['fsCallId'],
      id: map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactHistory.fromJson(String source) =>
      ContactHistory.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ContactHistory(tenantId: $tenantId, contactId: $contactId, channelType: $channelType, description: $description, typeDetail: $typeDetail, historyTime: $historyTime, startTime: $startTime, endTime: $endTime, creationTime: $creationTime, creatorUserId: $creatorUserId, phoneNumber: $phoneNumber, chanelId: $chanelId, status: $status, dialogId: $dialogId, isPicked: $isPicked, recordingUrl: $recordingUrl, missingQuantity: $missingQuantity, switchBoardNumber: $switchBoardNumber, branchNumber: $branchNumber, ciscoCallId: $ciscoCallId, agentId: $agentId, agentDepartment: $agentDepartment, callId: $callId, callTypeId: $callTypeId, score: $score, scoredById: $scoredById, scoredByName: $scoredByName, callRecordingUrl: $callRecordingUrl, notes: $notes, callScores: $callScores, scoreNote: $scoreNote, scoreErrorCode: $scoreErrorCode, agentName: $agentName, fsCallId: $fsCallId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is ContactHistory &&
        other.tenantId == tenantId &&
        other.contactId == contactId &&
        other.channelType == channelType &&
        other.description == description &&
        other.typeDetail == typeDetail &&
        other.historyTime == historyTime &&
        other.startTime == startTime &&
        other.endTime == endTime &&
        other.creationTime == creationTime &&
        other.creatorUserId == creatorUserId &&
        other.phoneNumber == phoneNumber &&
        other.chanelId == chanelId &&
        other.status == status &&
        other.dialogId == dialogId &&
        other.isPicked == isPicked &&
        other.recordingUrl == recordingUrl &&
        other.missingQuantity == missingQuantity &&
        other.switchBoardNumber == switchBoardNumber &&
        other.branchNumber == branchNumber &&
        other.ciscoCallId == ciscoCallId &&
        other.agentId == agentId &&
        other.agentDepartment == agentDepartment &&
        other.callId == callId &&
        other.callTypeId == callTypeId &&
        other.score == score &&
        other.scoredById == scoredById &&
        other.scoredByName == scoredByName &&
        other.callRecordingUrl == callRecordingUrl &&
        listEquals(other.notes, notes) &&
        listEquals(other.callScores, callScores) &&
        other.scoreNote == scoreNote &&
        other.scoreErrorCode == scoreErrorCode &&
        other.agentName == agentName &&
        other.fsCallId == fsCallId &&
        other.id == id;
  }

  @override
  int get hashCode {
    return tenantId.hashCode ^
        contactId.hashCode ^
        channelType.hashCode ^
        description.hashCode ^
        typeDetail.hashCode ^
        historyTime.hashCode ^
        startTime.hashCode ^
        endTime.hashCode ^
        creationTime.hashCode ^
        creatorUserId.hashCode ^
        phoneNumber.hashCode ^
        chanelId.hashCode ^
        status.hashCode ^
        dialogId.hashCode ^
        isPicked.hashCode ^
        recordingUrl.hashCode ^
        missingQuantity.hashCode ^
        switchBoardNumber.hashCode ^
        branchNumber.hashCode ^
        ciscoCallId.hashCode ^
        agentId.hashCode ^
        agentDepartment.hashCode ^
        callId.hashCode ^
        callTypeId.hashCode ^
        score.hashCode ^
        scoredById.hashCode ^
        scoredByName.hashCode ^
        callRecordingUrl.hashCode ^
        notes.hashCode ^
        callScores.hashCode ^
        scoreNote.hashCode ^
        scoreErrorCode.hashCode ^
        agentName.hashCode ^
        fsCallId.hashCode ^
        id.hashCode;
  }
}

class Note {
  int? tenantId;
  int? contactHistoryId;
  String? description;
  String? creationTime;
  int? creatorUserId;
  int? id;
  Note({
    this.tenantId,
    this.contactHistoryId,
    this.description,
    this.creationTime,
    this.creatorUserId,
    this.id,
  });

  Note copyWith({
    int? tenantId,
    int? contactHistoryId,
    String? description,
    String? creationTime,
    int? creatorUserId,
    int? id,
  }) {
    return Note(
      tenantId: tenantId ?? this.tenantId,
      contactHistoryId: contactHistoryId ?? this.contactHistoryId,
      description: description ?? this.description,
      creationTime: creationTime ?? this.creationTime,
      creatorUserId: creatorUserId ?? this.creatorUserId,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'tenantId': tenantId,
      'contactHistoryId': contactHistoryId,
      'description': description,
      'creationTime': creationTime,
      'creatorUserId': creatorUserId,
      'id': id,
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      tenantId: map['tenantId'],
      contactHistoryId: map['contactHistoryId'],
      description: map['description'],
      creationTime: map['creationTime'],
      creatorUserId: map['creatorUserId'],
      id: map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Note.fromJson(String source) => Note.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Note(tenantId: $tenantId, contactHistoryId: $contactHistoryId, description: $description, creationTime: $creationTime, creatorUserId: $creatorUserId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Note &&
        other.tenantId == tenantId &&
        other.contactHistoryId == contactHistoryId &&
        other.description == description &&
        other.creationTime == creationTime &&
        other.creatorUserId == creatorUserId &&
        other.id == id;
  }

  @override
  int get hashCode {
    return tenantId.hashCode ^
        contactHistoryId.hashCode ^
        description.hashCode ^
        creationTime.hashCode ^
        creatorUserId.hashCode ^
        id.hashCode;
  }
}

class CallScore {
  String? callId;
  String? requirement;
  String? criteria;
  int? pointLadder;
  bool? isProcess;
  int? score;
  String? description;
  bool? isOldScore;
  int? contactHistoryId;
  int? id;
  CallScore({
    this.callId,
    this.requirement,
    this.criteria,
    this.pointLadder,
    this.isProcess,
    this.score,
    this.description,
    this.isOldScore,
    this.contactHistoryId,
    this.id,
  });

  CallScore copyWith({
    String? callId,
    String? requirement,
    String? criteria,
    int? pointLadder,
    bool? isProcess,
    int? score,
    String? description,
    bool? isOldScore,
    int? contactHistoryId,
    int? id,
  }) {
    return CallScore(
      callId: callId ?? this.callId,
      requirement: requirement ?? this.requirement,
      criteria: criteria ?? this.criteria,
      pointLadder: pointLadder ?? this.pointLadder,
      isProcess: isProcess ?? this.isProcess,
      score: score ?? this.score,
      description: description ?? this.description,
      isOldScore: isOldScore ?? this.isOldScore,
      contactHistoryId: contactHistoryId ?? this.contactHistoryId,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'callId': callId,
      'requirement': requirement,
      'criteria': criteria,
      'pointLadder': pointLadder,
      'isProcess': isProcess,
      'score': score,
      'description': description,
      'isOldScore': isOldScore,
      'contactHistoryId': contactHistoryId,
      'id': id,
    };
  }

  factory CallScore.fromMap(Map<String, dynamic> map) {
    return CallScore(
      callId: map['callId'],
      requirement: map['requirement'],
      criteria: map['criteria'],
      pointLadder: map['pointLadder'],
      isProcess: map['isProcess'],
      score: map['score'],
      description: map['description'],
      isOldScore: map['isOldScore'],
      contactHistoryId: map['contactHistoryId'],
      id: map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CallScore.fromJson(String source) =>
      CallScore.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CallScore(callId: $callId, requirement: $requirement, criteria: $criteria, pointLadder: $pointLadder, isProcess: $isProcess, score: $score, description: $description, isOldScore: $isOldScore, contactHistoryId: $contactHistoryId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CallScore &&
        other.callId == callId &&
        other.requirement == requirement &&
        other.criteria == criteria &&
        other.pointLadder == pointLadder &&
        other.isProcess == isProcess &&
        other.score == score &&
        other.description == description &&
        other.isOldScore == isOldScore &&
        other.contactHistoryId == contactHistoryId &&
        other.id == id;
  }

  @override
  int get hashCode {
    return callId.hashCode ^
        requirement.hashCode ^
        criteria.hashCode ^
        pointLadder.hashCode ^
        isProcess.hashCode ^
        score.hashCode ^
        description.hashCode ^
        isOldScore.hashCode ^
        contactHistoryId.hashCode ^
        id.hashCode;
  }
}

class CreateContactHistoryCall {
  int? tenantId;
  int? contactId;
  int? agentId;
  int? callType;
  String? ringTime;
  String? answerTime;
  String? endTime;
  int? status;
  String? dialogId;
  String? recordingUrl;
  String? switchBoardNumber;
  String? branchNumber;
  String? ciscoCallId;
  String? phoneNumber;
  bool? isConnnected;
  int? duration;
  String? statusResult;
  int? id;
  CreateContactHistoryCall({
    this.tenantId,
    this.contactId,
    this.agentId,
    this.callType,
    this.ringTime,
    this.answerTime,
    this.endTime,
    this.status,
    this.dialogId,
    this.recordingUrl,
    this.switchBoardNumber,
    this.branchNumber,
    this.ciscoCallId,
    this.phoneNumber,
    this.isConnnected,
    this.duration,
    this.statusResult,
    this.id,
  });

  CreateContactHistoryCall copyWith({
    int? tenantId,
    int? contactId,
    int? agentId,
    int? callType,
    String? ringTime,
    String? answerTime,
    String? endTime,
    int? status,
    String? dialogId,
    String? recordingUrl,
    String? switchBoardNumber,
    String? branchNumber,
    String? ciscoCallId,
    String? phoneNumber,
    bool? isConnnected,
    int? duration,
    String? statusResult,
    int? id,
  }) {
    return CreateContactHistoryCall(
      tenantId: tenantId ?? this.tenantId,
      contactId: contactId ?? this.contactId,
      agentId: agentId ?? this.agentId,
      callType: callType ?? this.callType,
      ringTime: ringTime ?? this.ringTime,
      answerTime: answerTime ?? this.answerTime,
      endTime: endTime ?? this.endTime,
      status: status ?? this.status,
      dialogId: dialogId ?? this.dialogId,
      recordingUrl: recordingUrl ?? this.recordingUrl,
      switchBoardNumber: switchBoardNumber ?? this.switchBoardNumber,
      branchNumber: branchNumber ?? this.branchNumber,
      ciscoCallId: ciscoCallId ?? this.ciscoCallId,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      isConnnected: isConnnected ?? this.isConnnected,
      duration: duration ?? this.duration,
      statusResult: statusResult ?? this.statusResult,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'tenantId': tenantId,
      'contactId': contactId,
      'agentId': agentId,
      'callType': callType,
      'ringTime': ringTime,
      'answerTime': answerTime,
      'endTime': endTime,
      'status': status,
      'dialogId': dialogId,
      'recordingUrl': recordingUrl,
      'switchBoardNumber': switchBoardNumber,
      'branchNumber': branchNumber,
      'ciscoCallId': ciscoCallId,
      'phoneNumber': phoneNumber,
      'isConnnected': isConnnected,
      'duration': duration,
      'statusResult': statusResult,
      'id': id,
    };
  }

  factory CreateContactHistoryCall.fromMap(Map<String, dynamic> map) {
    return CreateContactHistoryCall(
      tenantId: map['tenantId'],
      contactId: map['contactId'],
      agentId: map['agentId'],
      callType: map['callType'],
      ringTime: map['ringTime'],
      answerTime: map['answerTime'],
      endTime: map['endTime'],
      status: map['status'],
      dialogId: map['dialogId'],
      recordingUrl: map['recordingUrl'],
      switchBoardNumber: map['switchBoardNumber'],
      branchNumber: map['branchNumber'],
      ciscoCallId: map['ciscoCallId'],
      phoneNumber: map['phoneNumber'],
      isConnnected: map['isConnnected'],
      duration: map['duration'],
      statusResult: map['statusResult'],
      id: map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CreateContactHistoryCall.fromJson(String source) =>
      CreateContactHistoryCall.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CreateContactHistoryCall(tenantId: $tenantId, contactId: $contactId, agentId: $agentId, callType: $callType, ringTime: $ringTime, answerTime: $answerTime, endTime: $endTime, status: $status, dialogId: $dialogId, recordingUrl: $recordingUrl, switchBoardNumber: $switchBoardNumber, branchNumber: $branchNumber, ciscoCallId: $ciscoCallId, phoneNumber: $phoneNumber, isConnnected: $isConnnected, duration: $duration, statusResult: $statusResult, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CreateContactHistoryCall &&
        other.tenantId == tenantId &&
        other.contactId == contactId &&
        other.agentId == agentId &&
        other.callType == callType &&
        other.ringTime == ringTime &&
        other.answerTime == answerTime &&
        other.endTime == endTime &&
        other.status == status &&
        other.dialogId == dialogId &&
        other.recordingUrl == recordingUrl &&
        other.switchBoardNumber == switchBoardNumber &&
        other.branchNumber == branchNumber &&
        other.ciscoCallId == ciscoCallId &&
        other.phoneNumber == phoneNumber &&
        other.isConnnected == isConnnected &&
        other.duration == duration &&
        other.statusResult == statusResult &&
        other.id == id;
  }

  @override
  int get hashCode {
    return tenantId.hashCode ^
        contactId.hashCode ^
        agentId.hashCode ^
        callType.hashCode ^
        ringTime.hashCode ^
        answerTime.hashCode ^
        endTime.hashCode ^
        status.hashCode ^
        dialogId.hashCode ^
        recordingUrl.hashCode ^
        switchBoardNumber.hashCode ^
        branchNumber.hashCode ^
        ciscoCallId.hashCode ^
        phoneNumber.hashCode ^
        isConnnected.hashCode ^
        duration.hashCode ^
        statusResult.hashCode ^
        id.hashCode;
  }
}
