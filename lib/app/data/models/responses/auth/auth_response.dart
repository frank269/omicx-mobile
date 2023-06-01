import 'dart:convert';

class AuthResponse {
  String? accessToken;
  String? encryptedAccessToken;
  int? expireInSeconds;
  int? userId;
  bool? isZaloChannelSupport;
  bool? isFacebookChannelSupport;
  bool? isVoiceChannelSupport;
  bool? isLiveChatChannelSupport;
  String? fullName;
  int? tenantId;
  String? extension;
  int? maxNumOfConversations;
  String? supportApplicationIds;
  String? message;
  bool? status;
  AuthResponse({
    required this.accessToken,
    required this.encryptedAccessToken,
    required this.expireInSeconds,
    required this.userId,
    required this.isZaloChannelSupport,
    required this.isFacebookChannelSupport,
    required this.isVoiceChannelSupport,
    required this.isLiveChatChannelSupport,
    required this.fullName,
    required this.tenantId,
    required this.extension,
    this.maxNumOfConversations,
    this.supportApplicationIds,
    required this.message,
    required this.status,
  });

  AuthResponse copyWith({
    String? accessToken,
    String? encryptedAccessToken,
    int? expireInSeconds,
    int? userId,
    bool? isZaloChannelSupport,
    bool? isFacebookChannelSupport,
    bool? isVoiceChannelSupport,
    bool? isLiveChatChannelSupport,
    String? fullName,
    int? tenantId,
    String? extension,
    int? maxNumOfConversations,
    String? supportApplicationIds,
    String? message,
    bool? status,
  }) {
    return AuthResponse(
      accessToken: accessToken ?? this.accessToken,
      encryptedAccessToken: encryptedAccessToken ?? this.encryptedAccessToken,
      expireInSeconds: expireInSeconds ?? this.expireInSeconds,
      userId: userId ?? this.userId,
      isZaloChannelSupport: isZaloChannelSupport ?? this.isZaloChannelSupport,
      isFacebookChannelSupport:
          isFacebookChannelSupport ?? this.isFacebookChannelSupport,
      isVoiceChannelSupport:
          isVoiceChannelSupport ?? this.isVoiceChannelSupport,
      isLiveChatChannelSupport:
          isLiveChatChannelSupport ?? this.isLiveChatChannelSupport,
      fullName: fullName ?? this.fullName,
      tenantId: tenantId ?? this.tenantId,
      extension: extension ?? this.extension,
      maxNumOfConversations:
          maxNumOfConversations ?? this.maxNumOfConversations,
      supportApplicationIds:
          supportApplicationIds ?? this.supportApplicationIds,
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'accessToken': accessToken,
      'encryptedAccessToken': encryptedAccessToken,
      'expireInSeconds': expireInSeconds,
      'userId': userId,
      'isZaloChannelSupport': isZaloChannelSupport,
      'isFacebookChannelSupport': isFacebookChannelSupport,
      'isVoiceChannelSupport': isVoiceChannelSupport,
      'isLiveChatChannelSupport': isLiveChatChannelSupport,
      'fullName': fullName,
      'tenantId': tenantId,
      'extension': extension,
      'maxNumOfConversations': maxNumOfConversations,
      'supportApplicationIds': supportApplicationIds,
      'message': message,
      'status': status,
    };
  }

  factory AuthResponse.fromMap(Map<String, dynamic> map) {
    return AuthResponse(
      accessToken: map['accessToken'],
      encryptedAccessToken: map['encryptedAccessToken'],
      expireInSeconds: map['expireInSeconds'],
      userId: map['userId'],
      isZaloChannelSupport: map['isZaloChannelSupport'],
      isFacebookChannelSupport: map['isFacebookChannelSupport'],
      isVoiceChannelSupport: map['isVoiceChannelSupport'],
      isLiveChatChannelSupport: map['isLiveChatChannelSupport'],
      fullName: map['fullName'],
      tenantId: map['tenantId'],
      extension: map['extension'],
      maxNumOfConversations: map['maxNumOfConversations'],
      supportApplicationIds: map['supportApplicationIds'],
      message: map['message'],
      status: map['status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthResponse.fromJson(String source) =>
      AuthResponse.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AuthResponse(accessToken: $accessToken, encryptedAccessToken: $encryptedAccessToken, expireInSeconds: $expireInSeconds, userId: $userId, isZaloChannelSupport: $isZaloChannelSupport, isFacebookChannelSupport: $isFacebookChannelSupport, isVoiceChannelSupport: $isVoiceChannelSupport, isLiveChatChannelSupport: $isLiveChatChannelSupport, fullName: $fullName, tenantId: $tenantId, extension: $extension, maxNumOfConversations: $maxNumOfConversations, supportApplicationIds: $supportApplicationIds, message: $message, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AuthResponse &&
        other.accessToken == accessToken &&
        other.encryptedAccessToken == encryptedAccessToken &&
        other.expireInSeconds == expireInSeconds &&
        other.userId == userId &&
        other.isZaloChannelSupport == isZaloChannelSupport &&
        other.isFacebookChannelSupport == isFacebookChannelSupport &&
        other.isVoiceChannelSupport == isVoiceChannelSupport &&
        other.isLiveChatChannelSupport == isLiveChatChannelSupport &&
        other.fullName == fullName &&
        other.tenantId == tenantId &&
        other.extension == extension &&
        other.maxNumOfConversations == maxNumOfConversations &&
        other.supportApplicationIds == supportApplicationIds &&
        other.message == message &&
        other.status == status;
  }

  @override
  int get hashCode {
    return accessToken.hashCode ^
        encryptedAccessToken.hashCode ^
        expireInSeconds.hashCode ^
        userId.hashCode ^
        isZaloChannelSupport.hashCode ^
        isFacebookChannelSupport.hashCode ^
        isVoiceChannelSupport.hashCode ^
        isLiveChatChannelSupport.hashCode ^
        fullName.hashCode ^
        tenantId.hashCode ^
        extension.hashCode ^
        maxNumOfConversations.hashCode ^
        supportApplicationIds.hashCode ^
        message.hashCode ^
        status.hashCode;
  }
}
