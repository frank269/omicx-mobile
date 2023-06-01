import 'dart:convert';

class CallHistoryParam {
  final int cloudTenantId;
  final int currentPage;
  final bool pageEnabled;
  CallHistoryParam({
    required this.cloudTenantId,
    required this.currentPage,
    this.pageEnabled = true,
  });

  CallHistoryParam copyWith({
    int? cloudTenantId,
    int? currentPage,
    bool? pageEnabled,
  }) {
    return CallHistoryParam(
      cloudTenantId: cloudTenantId ?? this.cloudTenantId,
      currentPage: currentPage ?? this.currentPage,
      pageEnabled: pageEnabled ?? this.pageEnabled,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cloudTenantId': cloudTenantId,
      'currentPage': currentPage,
      'pageEnabled': pageEnabled,
    };
  }

  factory CallHistoryParam.fromMap(Map<String, dynamic> map) {
    return CallHistoryParam(
      cloudTenantId: map['cloudTenantId'],
      currentPage: map['currentPage'],
      pageEnabled: map['pageEnabled'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CallHistoryParam.fromJson(String source) =>
      CallHistoryParam.fromMap(json.decode(source));

  @override
  String toString() =>
      'CallHistoryParam(cloudTenantId: $cloudTenantId, currentPage: $currentPage, pageEnabled: $pageEnabled)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CallHistoryParam &&
        other.cloudTenantId == cloudTenantId &&
        other.currentPage == currentPage &&
        other.pageEnabled == pageEnabled;
  }

  @override
  int get hashCode =>
      cloudTenantId.hashCode ^ currentPage.hashCode ^ pageEnabled.hashCode;
}
