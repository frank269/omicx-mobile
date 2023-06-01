import 'dart:convert';

class AuthRequest {
  String userNameOrEmailAddress;
  String password;
  bool rememberClient;
  int tenantId;
  AuthRequest({
    required this.userNameOrEmailAddress,
    required this.password,
    this.rememberClient = false,
    this.tenantId = 102,
  });

  AuthRequest copyWith({
    String? userNameOrEmailAddress,
    String? password,
    bool? rememberClient,
    int? tenantId,
  }) {
    return AuthRequest(
      userNameOrEmailAddress:
          userNameOrEmailAddress ?? this.userNameOrEmailAddress,
      password: password ?? this.password,
      rememberClient: rememberClient ?? this.rememberClient,
      tenantId: tenantId ?? this.tenantId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userNameOrEmailAddress': userNameOrEmailAddress,
      'password': password,
      'rememberClient': rememberClient,
      'tenantId': tenantId,
    };
  }

  factory AuthRequest.fromMap(Map<String, dynamic> map) {
    return AuthRequest(
      userNameOrEmailAddress: map['userNameOrEmailAddress'],
      password: map['password'],
      rememberClient: map['rememberClient'],
      tenantId: map['tenantId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthRequest.fromJson(String source) =>
      AuthRequest.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AuthRequest(userNameOrEmailAddress: $userNameOrEmailAddress, password: $password, rememberClient: $rememberClient, tenantId: $tenantId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AuthRequest &&
        other.userNameOrEmailAddress == userNameOrEmailAddress &&
        other.password == password &&
        other.rememberClient == rememberClient &&
        other.tenantId == tenantId;
  }

  @override
  int get hashCode {
    return userNameOrEmailAddress.hashCode ^
        password.hashCode ^
        rememberClient.hashCode ^
        tenantId.hashCode;
  }
}
