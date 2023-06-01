import 'dart:convert';

class ContactDetailParam {
  final int id;
  ContactDetailParam({
    required this.id,
  });
  

  ContactDetailParam copyWith({
    int? id,
  }) {
    return ContactDetailParam(
      id: id ?? this.id,
    );
  }

  Map<String, String> toMap() {
    return {
      'id': id.toString(),
    };
  }

  factory ContactDetailParam.fromMap(Map<String, dynamic> map) {
    return ContactDetailParam(
      id: map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactDetailParam.fromJson(String source) => ContactDetailParam.fromMap(json.decode(source));

  @override
  String toString() => 'ContactDetailParam(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ContactDetailParam &&
      other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
