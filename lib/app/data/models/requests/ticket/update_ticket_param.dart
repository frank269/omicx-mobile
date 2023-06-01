import 'dart:convert';

class UpdateTicketParam {
  String? agentAssignee;
  int? id;
  int? priority;
  String? status;
  String? ticketType;
  UpdateTicketParam({
    this.agentAssignee,
    this.id,
    this.priority,
    this.status,
    this.ticketType,
  });

  UpdateTicketParam copyWith({
    String? agentAssignee,
    int? id,
    int? priority,
    String? status,
    String? ticketType,
  }) {
    return UpdateTicketParam(
      agentAssignee: agentAssignee ?? this.agentAssignee,
      id: id ?? this.id,
      priority: priority ?? this.priority,
      status: status ?? this.status,
      ticketType: ticketType ?? this.ticketType,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'agentAssignee': agentAssignee,
      'id': id,
      'priority': priority,
      'status': status,
      'ticketType': ticketType,
    };
  }

  factory UpdateTicketParam.fromMap(Map<String, dynamic> map) {
    return UpdateTicketParam(
      agentAssignee: map['agentAssignee'],
      id: map['id'],
      priority: map['priority'],
      status: map['status'],
      ticketType: map['ticketType'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UpdateTicketParam.fromJson(String source) => UpdateTicketParam.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UpdateTicketParam(agentAssignee: $agentAssignee, id: $id, priority: $priority, status: $status, ticketType: $ticketType)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UpdateTicketParam &&
      other.agentAssignee == agentAssignee &&
      other.id == id &&
      other.priority == priority &&
      other.status == status &&
      other.ticketType == ticketType;
  }

  @override
  int get hashCode {
    return agentAssignee.hashCode ^
      id.hashCode ^
      priority.hashCode ^
      status.hashCode ^
      ticketType.hashCode;
  }
}
