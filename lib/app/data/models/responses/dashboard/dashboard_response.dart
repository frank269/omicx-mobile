import 'dart:convert';

class AgentInbound {
  int? totals;
  int? completedCalls;
  int? missedCalls;
  double? talkTime;
  AgentInbound({
    this.totals,
    this.completedCalls,
    this.missedCalls,
    this.talkTime,
  });

  AgentInbound copyWith({
    int? totals,
    int? completedCalls,
    int? missedCalls,
    double? talkTime,
  }) {
    return AgentInbound(
      totals: totals ?? this.totals,
      completedCalls: completedCalls ?? this.completedCalls,
      missedCalls: missedCalls ?? this.missedCalls,
      talkTime: talkTime ?? this.talkTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'totals': totals,
      'completedCalls': completedCalls,
      'missedCalls': missedCalls,
      'talkTime': talkTime,
    };
  }

  factory AgentInbound.fromMap(Map<String, dynamic> map) {
    return AgentInbound(
      totals: map['totals'],
      completedCalls: map['completedCalls'],
      missedCalls: map['missedCalls'],
      talkTime: map['talkTime'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AgentInbound.fromJson(String source) =>
      AgentInbound.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AgentInbound(totals: $totals, completedCalls: $completedCalls, missedCalls: $missedCalls, talkTime: $talkTime)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AgentInbound &&
        other.totals == totals &&
        other.completedCalls == completedCalls &&
        other.missedCalls == missedCalls &&
        other.talkTime == talkTime;
  }

  @override
  int get hashCode {
    return totals.hashCode ^
        completedCalls.hashCode ^
        missedCalls.hashCode ^
        talkTime.hashCode;
  }
}

class AgentOutbound {
  int? totals;
  int? completedCalls;
  int? missedCalls;
  double? talkTime;
  AgentOutbound({
    this.totals,
    this.completedCalls,
    this.missedCalls,
    this.talkTime,
  });

  AgentOutbound copyWith({
    int? totals,
    int? completedCalls,
    int? missedCalls,
    double? talkTime,
  }) {
    return AgentOutbound(
      totals: totals ?? this.totals,
      completedCalls: completedCalls ?? this.completedCalls,
      missedCalls: missedCalls ?? this.missedCalls,
      talkTime: talkTime ?? this.talkTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'totals': totals,
      'completedCalls': completedCalls,
      'missedCalls': missedCalls,
      'talkTime': talkTime,
    };
  }

  factory AgentOutbound.fromMap(Map<String, dynamic> map) {
    return AgentOutbound(
      totals: map['totals'],
      completedCalls: map['completedCalls'],
      missedCalls: map['missedCalls'],
      talkTime: map['talkTime'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AgentOutbound.fromJson(String source) =>
      AgentOutbound.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AgentOutbound(totals: $totals, completedCalls: $completedCalls, missedCalls: $missedCalls, talkTime: $talkTime)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AgentOutbound &&
        other.totals == totals &&
        other.completedCalls == completedCalls &&
        other.missedCalls == missedCalls &&
        other.talkTime == talkTime;
  }

  @override
  int get hashCode {
    return totals.hashCode ^
        completedCalls.hashCode ^
        missedCalls.hashCode ^
        talkTime.hashCode;
  }
}

class AgentTask {
  int? assignedTickets;
  int? participatedCampaigns;
  int? assignedInteractCards;
  AgentTask({
    this.assignedTickets,
    this.participatedCampaigns,
    this.assignedInteractCards,
  });

  AgentTask copyWith({
    int? assignedTickets,
    int? participatedCampaigns,
    int? assignedInteractCards,
  }) {
    return AgentTask(
      assignedTickets: assignedTickets ?? this.assignedTickets,
      participatedCampaigns:
          participatedCampaigns ?? this.participatedCampaigns,
      assignedInteractCards:
          assignedInteractCards ?? this.assignedInteractCards,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'assignedTickets': assignedTickets,
      'participatedCampaigns': participatedCampaigns,
      'assignedInteractCards': assignedInteractCards,
    };
  }

  factory AgentTask.fromMap(Map<String, dynamic> map) {
    return AgentTask(
      assignedTickets: map['assignedTickets'],
      participatedCampaigns: map['participatedCampaigns'],
      assignedInteractCards: map['assignedInteractCards'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AgentTask.fromJson(String source) =>
      AgentTask.fromMap(json.decode(source));

  @override
  String toString() =>
      'AgentTask(assignedTickets: $assignedTickets, participatedCampaigns: $participatedCampaigns, assignedInteractCards: $assignedInteractCards)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AgentTask &&
        other.assignedTickets == assignedTickets &&
        other.participatedCampaigns == participatedCampaigns &&
        other.assignedInteractCards == assignedInteractCards;
  }

  @override
  int get hashCode =>
      assignedTickets.hashCode ^
      participatedCampaigns.hashCode ^
      assignedInteractCards.hashCode;
}

class AgentTicket {
  int? closedTicket;
  AgentTicket({
    this.closedTicket,
  });

  AgentTicket copyWith({
    int? closedTicket,
  }) {
    return AgentTicket(
      closedTicket: closedTicket ?? this.closedTicket,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'closedTicket': closedTicket,
    };
  }

  factory AgentTicket.fromMap(Map<String, dynamic> map) {
    return AgentTicket(
      closedTicket: map['closedTicket'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AgentTicket.fromJson(String source) =>
      AgentTicket.fromMap(json.decode(source));

  @override
  String toString() => 'AgentTicket(closedTicket: $closedTicket)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AgentTicket && other.closedTicket == closedTicket;
  }

  @override
  int get hashCode => closedTicket.hashCode;
}
