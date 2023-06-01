import 'dart:convert';

class UpdateContactHistoryRequest {
  int? status;
  int? id;
  UpdateContactHistoryRequest({
    this.status,
    this.id,
  });

  UpdateContactHistoryRequest copyWith({
    int? status,
    int? id,
  }) {
    return UpdateContactHistoryRequest(
      status: status ?? this.status,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'id': id,
    };
  }

  factory UpdateContactHistoryRequest.fromMap(Map<String, dynamic> map) {
    return UpdateContactHistoryRequest(
      status: map['status'],
      id: map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UpdateContactHistoryRequest.fromJson(String source) =>
      UpdateContactHistoryRequest.fromMap(json.decode(source));

  @override
  String toString() => 'UpdateContactHistoryRequest(status: $status, id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UpdateContactHistoryRequest &&
        other.status == status &&
        other.id == id;
  }

  @override
  int get hashCode => status.hashCode ^ id.hashCode;
}
