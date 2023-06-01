import 'dart:convert';

class GetHistoryContactInTicket {
  final int TicketId;
  GetHistoryContactInTicket({
    required this.TicketId,
  });

  GetHistoryContactInTicket copyWith({
    int? TicketId,
  }) {
    return GetHistoryContactInTicket(
      TicketId: TicketId ?? this.TicketId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'TicketId': TicketId,
    };
  }

  factory GetHistoryContactInTicket.fromMap(Map<String, dynamic> map) {
    return GetHistoryContactInTicket(
      TicketId: map['TicketId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory GetHistoryContactInTicket.fromJson(String source) =>
      GetHistoryContactInTicket.fromMap(json.decode(source));

  @override
  String toString() => 'GetHistoryContactInTicket(TicketId: $TicketId)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GetHistoryContactInTicket && other.TicketId == TicketId;
  }

  @override
  int get hashCode => TicketId.hashCode;
}
