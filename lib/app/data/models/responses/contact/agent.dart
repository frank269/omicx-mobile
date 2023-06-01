import 'dart:convert';

import 'package:flutter/foundation.dart';

class Agent {
  String? displayName;
  int? groupId;
  List<int?>? groupIds;
  int? value;
  Agent({
    this.displayName,
    this.groupId,
    this.groupIds,
    this.value,
  });

  Agent copyWith({
    String? displayName,
    int? groupId,
    List<int?>? groupIds,
    int? value,
  }) {
    return Agent(
      displayName: displayName ?? this.displayName,
      groupId: groupId ?? this.groupId,
      groupIds: groupIds ?? this.groupIds,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'displayName': displayName,
      'groupId': groupId,
      'groupIds': groupIds?.map((x) => x).toList(),
      'value': value,
    };
  }

  factory Agent.fromMap(Map<String, dynamic> map) {
    return Agent(
      displayName: map['displayName'],
      groupId: map['groupId'],
      groupIds: map['groupIds'] == null
          ? null
          : List<int?>.from(map['groupIds']?.map((x) => x)),
      value: map['value'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Agent.fromJson(String source) => Agent.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Agent(displayName: $displayName, groupId: $groupId, groupIds: $groupIds, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Agent &&
        other.displayName == displayName &&
        other.groupId == groupId &&
        listEquals(other.groupIds, groupIds) &&
        other.value == value;
  }

  @override
  int get hashCode {
    return displayName.hashCode ^
        groupId.hashCode ^
        groupIds.hashCode ^
        value.hashCode;
  }
}
