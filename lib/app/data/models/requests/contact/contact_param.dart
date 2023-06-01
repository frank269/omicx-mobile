import 'dart:convert';

class ContactParam {
  final int maxResultCount;
  final int skipCount;
  ContactParam({
    required this.maxResultCount,
    required this.skipCount,
  });

  ContactParam copyWith({
    int? maxResultCount,
    int? skipCount,
  }) {
    return ContactParam(
      maxResultCount: maxResultCount ?? this.maxResultCount,
      skipCount: skipCount ?? this.skipCount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'maxResultCount': maxResultCount,
      'skipCount': skipCount,
    };
  }

  factory ContactParam.fromMap(Map<String, dynamic> map) {
    return ContactParam(
      maxResultCount: map['maxResultCount'],
      skipCount: map['skipCount'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactParam.fromJson(String source) =>
      ContactParam.fromMap(json.decode(source));

  @override
  String toString() =>
      'ContactParam(maxResultCount: $maxResultCount, skipCount: $skipCount)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ContactParam &&
        other.maxResultCount == maxResultCount &&
        other.skipCount == skipCount;
  }

  @override
  int get hashCode => maxResultCount.hashCode ^ skipCount.hashCode;
}
