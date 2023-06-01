import 'dart:convert';

class GetTotalCallScoreParam {
  final int TicketId;
  GetTotalCallScoreParam({
    required this.TicketId,
  });

  GetTotalCallScoreParam copyWith({
    int? TicketId,
  }) {
    return GetTotalCallScoreParam(
      TicketId: TicketId ?? this.TicketId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'TicketId': TicketId,
    };
  }

  factory GetTotalCallScoreParam.fromMap(Map<String, dynamic> map) {
    return GetTotalCallScoreParam(
      TicketId: map['TicketId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory GetTotalCallScoreParam.fromJson(String source) =>
      GetTotalCallScoreParam.fromMap(json.decode(source));

  @override
  String toString() => 'GetTotalCallScore(TicketId: $TicketId)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GetTotalCallScoreParam && other.TicketId == TicketId;
  }

  @override
  int get hashCode => TicketId.hashCode;
}
