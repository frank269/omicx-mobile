import 'dart:convert';

class DashBoardParam {
  final int agentId;
  final int tenantId;
  DashBoardParam({
    required this.agentId,
    required this.tenantId,
  });

  DashBoardParam copyWith({
    int? agentId,
    int? tenantId,
  }) {
    return DashBoardParam(
      agentId: agentId ?? this.agentId,
      tenantId: tenantId ?? this.tenantId,
    );
  }

  Map<String, String> toMap() {
    return {
      'agentId': agentId.toString(),
      'tenantId': tenantId.toString(),
    };
  }

  factory DashBoardParam.fromMap(Map<String, dynamic> map) {
    return DashBoardParam(
      agentId: map['agentId'],
      tenantId: map['tenantId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DashBoardParam.fromJson(String source) =>
      DashBoardParam.fromMap(json.decode(source));

  @override
  String toString() => 'DashBoardParam(agentId: $agentId, tenantId: $tenantId)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DashBoardParam &&
        other.agentId == agentId &&
        other.tenantId == tenantId;
  }

  @override
  int get hashCode => agentId.hashCode ^ tenantId.hashCode;
}
