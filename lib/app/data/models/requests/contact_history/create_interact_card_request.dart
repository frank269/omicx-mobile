import 'dart:convert';

class CreateInteractCardRequest {
  int? tenantId;
  String? channelType;
  int? callId;
  String? statusResult;
  String? description;
  String? classify;
  String? outboundType;
  String? callBackDate;
  int? creatorUserId;
  String? creationTime;
  String? phoneNumber;
  String? contactName;
  CreateInteractCardRequest({
    this.tenantId,
    this.channelType,
    this.callId,
    this.statusResult,
    this.description,
    this.classify,
    this.outboundType,
    this.callBackDate,
    this.creatorUserId,
    this.creationTime,
    this.phoneNumber,
    this.contactName,
  });

  CreateInteractCardRequest copyWith({
    int? tenantId,
    String? channelType,
    int? callId,
    String? statusResult,
    String? description,
    String? classify,
    String? outboundType,
    String? callBackDate,
    int? creatorUserId,
    String? creationTime,
    String? phoneNumber,
    String? contactName,
  }) {
    return CreateInteractCardRequest(
      tenantId: tenantId ?? this.tenantId,
      channelType: channelType ?? this.channelType,
      callId: callId ?? this.callId,
      statusResult: statusResult ?? this.statusResult,
      description: description ?? this.description,
      classify: classify ?? this.classify,
      outboundType: outboundType ?? this.outboundType,
      callBackDate: callBackDate ?? this.callBackDate,
      creatorUserId: creatorUserId ?? this.creatorUserId,
      creationTime: creationTime ?? this.creationTime,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      contactName: contactName ?? this.contactName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'tenantId': tenantId,
      'channelType': channelType,
      'callId': callId,
      'statusResult': statusResult,
      'description': description,
      'classify': classify,
      'outboundType': outboundType,
      'callBackDate': callBackDate,
      'creatorUserId': creatorUserId,
      'creationTime': creationTime,
      'phoneNumber': phoneNumber,
      'contactName': contactName,
    };
  }

  factory CreateInteractCardRequest.fromMap(Map<String, dynamic> map) {
    return CreateInteractCardRequest(
      tenantId: map['tenantId'],
      channelType: map['channelType'],
      callId: map['callId'],
      statusResult: map['statusResult'],
      description: map['description'],
      classify: map['classify'],
      outboundType: map['outboundType'],
      callBackDate: map['callBackDate'],
      creatorUserId: map['creatorUserId'],
      creationTime: map['creationTime'],
      phoneNumber: map['phoneNumber'],
      contactName: map['contactName'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CreateInteractCardRequest.fromJson(String source) =>
      CreateInteractCardRequest.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CreateInteractCardRequest(tenantId: $tenantId, channelType: $channelType, callId: $callId, statusResult: $statusResult, description: $description, classify: $classify, outboundType: $outboundType, callBackDate: $callBackDate, creatorUserId: $creatorUserId, creationTime: $creationTime, phoneNumber: $phoneNumber, contactName: $contactName)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CreateInteractCardRequest &&
        other.tenantId == tenantId &&
        other.channelType == channelType &&
        other.callId == callId &&
        other.statusResult == statusResult &&
        other.description == description &&
        other.classify == classify &&
        other.outboundType == outboundType &&
        other.callBackDate == callBackDate &&
        other.creatorUserId == creatorUserId &&
        other.creationTime == creationTime &&
        other.phoneNumber == phoneNumber &&
        other.contactName == contactName;
  }

  @override
  int get hashCode {
    return tenantId.hashCode ^
        channelType.hashCode ^
        callId.hashCode ^
        statusResult.hashCode ^
        description.hashCode ^
        classify.hashCode ^
        outboundType.hashCode ^
        callBackDate.hashCode ^
        creatorUserId.hashCode ^
        creationTime.hashCode ^
        phoneNumber.hashCode ^
        contactName.hashCode;
  }
}
