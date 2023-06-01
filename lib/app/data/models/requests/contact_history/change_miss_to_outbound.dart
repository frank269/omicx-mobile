import 'dart:convert';

class ChangeMissToOutBoundRequest {
  int? contactId;
  int? contactHistoryId;
  int? contactType;
  int? callId;
  String? phoneNumberToChange;
  ChangeMissToOutBoundRequest({
    this.contactId,
    this.contactHistoryId,
    this.contactType,
    this.callId,
    this.phoneNumberToChange,
  });

  ChangeMissToOutBoundRequest copyWith({
    int? contactId,
    int? contactHistoryId,
    int? contactType,
    int? callId,
    String? phoneNumberToChange,
  }) {
    return ChangeMissToOutBoundRequest(
      contactId: contactId ?? this.contactId,
      contactHistoryId: contactHistoryId ?? this.contactHistoryId,
      contactType: contactType ?? this.contactType,
      callId: callId ?? this.callId,
      phoneNumberToChange: phoneNumberToChange ?? this.phoneNumberToChange,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'contactId': contactId,
      'contactHistoryId': contactHistoryId,
      'contactType': contactType,
      'callId': callId,
      'phoneNumberToChange': phoneNumberToChange,
    };
  }

  factory ChangeMissToOutBoundRequest.fromMap(Map<String, dynamic> map) {
    return ChangeMissToOutBoundRequest(
      contactId: map['contactId'],
      contactHistoryId: map['contactHistoryId'],
      contactType: map['contactType'],
      callId: map['callId'],
      phoneNumberToChange: map['phoneNumberToChange'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ChangeMissToOutBoundRequest.fromJson(String source) => ChangeMissToOutBoundRequest.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ChangeMissToOutBoundRequest(contactId: $contactId, contactHistoryId: $contactHistoryId, contactType: $contactType, callId: $callId, phoneNumberToChange: $phoneNumberToChange)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ChangeMissToOutBoundRequest &&
      other.contactId == contactId &&
      other.contactHistoryId == contactHistoryId &&
      other.contactType == contactType &&
      other.callId == callId &&
      other.phoneNumberToChange == phoneNumberToChange;
  }

  @override
  int get hashCode {
    return contactId.hashCode ^
      contactHistoryId.hashCode ^
      contactType.hashCode ^
      callId.hashCode ^
      phoneNumberToChange.hashCode;
  }
}
