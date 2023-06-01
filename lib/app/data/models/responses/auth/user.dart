import 'dart:convert';
import 'dart:core';

import 'package:flutter/foundation.dart';

class User {
  String? userName;
  String? name;
  String? surname;
  String? emailAddress;
  bool? isActive;
  String? fullName;
  bool? isUsePhone;
  String? shortPhone;
  String? phoneNumber;
  String? lastLoginTime;
  String? creationDate;
  List<String?>? roleNames;
  List<String?>? groupName;
  String? agentStatus;
  String? lastUpdateDate;
  int? userRoleId;
  String? creatorName;
  int? creatorId;
  int? totalLoginAttempt;
  int? maxNumberOfConversation;
  String? address;
  String? dateOfBirth;
  bool? gender;
  String? avatarUrl;
  int? ringDurationBeforeNext;
  int? pendingTimeAfterCall;
  bool? autoAnswer;
  int? callOutLimit;
  int? callOutDurationLimit;
  bool? internalCalling;
  bool? domesticCalling;
  bool? internationalCalling;
  bool? canCallInbound;
  bool? canCallOutbound;
  int? agentDeskSettingId;
  int? ccmpAgentId;
  String? roleName;
  String? avatarCreatorUrl;
  String? ciscoSkillUrl;
  String? ciscoSkillName;
  int? id;
  User({
    this.userName,
    this.name,
    this.surname,
    this.emailAddress,
    this.isActive,
    this.fullName,
    this.isUsePhone,
    this.shortPhone,
    this.phoneNumber,
    this.lastLoginTime,
    this.creationDate,
    this.roleNames,
    this.groupName,
    this.agentStatus,
    this.lastUpdateDate,
    this.userRoleId,
    this.creatorName,
    this.creatorId,
    this.totalLoginAttempt,
    this.maxNumberOfConversation,
    this.address,
    this.dateOfBirth,
    this.gender,
    this.avatarUrl,
    this.ringDurationBeforeNext,
    this.pendingTimeAfterCall,
    this.autoAnswer,
    this.callOutLimit,
    this.callOutDurationLimit,
    this.internalCalling,
    this.domesticCalling,
    this.internationalCalling,
    this.canCallInbound,
    this.canCallOutbound,
    this.agentDeskSettingId,
    this.ccmpAgentId,
    this.roleName,
    this.avatarCreatorUrl,
    this.ciscoSkillUrl,
    this.ciscoSkillName,
    this.id,
  });

  User copyWith({
    String? userName,
    String? name,
    String? surname,
    String? emailAddress,
    bool? isActive,
    String? fullName,
    bool? isUsePhone,
    String? shortPhone,
    String? phoneNumber,
    String? lastLoginTime,
    String? creationDate,
    List<String?>? roleNames,
    List<String?>? groupName,
    String? agentStatus,
    String? lastUpdateDate,
    int? userRoleId,
    String? creatorName,
    int? creatorId,
    int? totalLoginAttempt,
    int? maxNumberOfConversation,
    String? address,
    String? dateOfBirth,
    bool? gender,
    String? avatarUrl,
    int? ringDurationBeforeNext,
    int? pendingTimeAfterCall,
    bool? autoAnswer,
    int? callOutLimit,
    int? callOutDurationLimit,
    bool? internalCalling,
    bool? domesticCalling,
    bool? internationalCalling,
    bool? canCallInbound,
    bool? canCallOutbound,
    int? agentDeskSettingId,
    int? ccmpAgentId,
    String? roleName,
    String? avatarCreatorUrl,
    String? ciscoSkillUrl,
    String? ciscoSkillName,
    int? id,
  }) {
    return User(
      userName: userName ?? this.userName,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      emailAddress: emailAddress ?? this.emailAddress,
      isActive: isActive ?? this.isActive,
      fullName: fullName ?? this.fullName,
      isUsePhone: isUsePhone ?? this.isUsePhone,
      shortPhone: shortPhone ?? this.shortPhone,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      lastLoginTime: lastLoginTime ?? this.lastLoginTime,
      creationDate: creationDate ?? this.creationDate,
      roleNames: roleNames ?? this.roleNames,
      groupName: groupName ?? this.groupName,
      agentStatus: agentStatus ?? this.agentStatus,
      lastUpdateDate: lastUpdateDate ?? this.lastUpdateDate,
      userRoleId: userRoleId ?? this.userRoleId,
      creatorName: creatorName ?? this.creatorName,
      creatorId: creatorId ?? this.creatorId,
      totalLoginAttempt: totalLoginAttempt ?? this.totalLoginAttempt,
      maxNumberOfConversation:
          maxNumberOfConversation ?? this.maxNumberOfConversation,
      address: address ?? this.address,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      gender: gender ?? this.gender,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      ringDurationBeforeNext:
          ringDurationBeforeNext ?? this.ringDurationBeforeNext,
      pendingTimeAfterCall: pendingTimeAfterCall ?? this.pendingTimeAfterCall,
      autoAnswer: autoAnswer ?? this.autoAnswer,
      callOutLimit: callOutLimit ?? this.callOutLimit,
      callOutDurationLimit: callOutDurationLimit ?? this.callOutDurationLimit,
      internalCalling: internalCalling ?? this.internalCalling,
      domesticCalling: domesticCalling ?? this.domesticCalling,
      internationalCalling: internationalCalling ?? this.internationalCalling,
      canCallInbound: canCallInbound ?? this.canCallInbound,
      canCallOutbound: canCallOutbound ?? this.canCallOutbound,
      agentDeskSettingId: agentDeskSettingId ?? this.agentDeskSettingId,
      ccmpAgentId: ccmpAgentId ?? this.ccmpAgentId,
      roleName: roleName ?? this.roleName,
      avatarCreatorUrl: avatarCreatorUrl ?? this.avatarCreatorUrl,
      ciscoSkillUrl: ciscoSkillUrl ?? this.ciscoSkillUrl,
      ciscoSkillName: ciscoSkillName ?? this.ciscoSkillName,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'name': name,
      'surname': surname,
      'emailAddress': emailAddress,
      'isActive': isActive,
      'fullName': fullName,
      'isUsePhone': isUsePhone,
      'shortPhone': shortPhone,
      'phoneNumber': phoneNumber,
      'lastLoginTime': lastLoginTime,
      'creationDate': creationDate,
      'roleNames': roleNames?.map((x) => x).toList(),
      'groupName': groupName?.map((x) => x).toList(),
      'agentStatus': agentStatus,
      'lastUpdateDate': lastUpdateDate,
      'userRoleId': userRoleId,
      'creatorName': creatorName,
      'creatorId': creatorId,
      'totalLoginAttempt': totalLoginAttempt,
      'maxNumberOfConversation': maxNumberOfConversation,
      'address': address,
      'dateOfBirth': dateOfBirth,
      'gender': gender,
      'avatarUrl': avatarUrl,
      'ringDurationBeforeNext': ringDurationBeforeNext,
      'pendingTimeAfterCall': pendingTimeAfterCall,
      'autoAnswer': autoAnswer,
      'callOutLimit': callOutLimit,
      'callOutDurationLimit': callOutDurationLimit,
      'internalCalling': internalCalling,
      'domesticCalling': domesticCalling,
      'internationalCalling': internationalCalling,
      'canCallInbound': canCallInbound,
      'canCallOutbound': canCallOutbound,
      'agentDeskSettingId': agentDeskSettingId,
      'ccmpAgentId': ccmpAgentId,
      'roleName': roleName,
      'avatarCreatorUrl': avatarCreatorUrl,
      'ciscoSkillUrl': ciscoSkillUrl,
      'ciscoSkillName': ciscoSkillName,
      'id': id,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userName: map['userName'],
      name: map['name'],
      surname: map['surname'],
      emailAddress: map['emailAddress'],
      isActive: map['isActive'],
      fullName: map['fullName'],
      isUsePhone: map['isUsePhone'],
      shortPhone: map['shortPhone'],
      phoneNumber: map['phoneNumber'],
      lastLoginTime: map['lastLoginTime'],
      creationDate: map['creationDate'],
      roleNames: map['roleNames'] == null
          ? null
          : List<String?>.from(map['roleNames']?.map((x) => x)),
      groupName: map['groupName'] == null
          ? null
          : List<String?>.from(map['groupName']?.map((x) => x)),
      agentStatus: map['agentStatus'],
      lastUpdateDate: map['lastUpdateDate'],
      userRoleId: map['userRoleId'],
      creatorName: map['creatorName'],
      creatorId: map['creatorId'],
      totalLoginAttempt: map['totalLoginAttempt'],
      maxNumberOfConversation: map['maxNumberOfConversation'],
      address: map['address'],
      dateOfBirth: map['dateOfBirth'],
      gender: map['gender'],
      avatarUrl: map['avatarUrl'],
      ringDurationBeforeNext: map['ringDurationBeforeNext'],
      pendingTimeAfterCall: map['pendingTimeAfterCall'],
      autoAnswer: map['autoAnswer'],
      callOutLimit: map['callOutLimit'],
      callOutDurationLimit: map['callOutDurationLimit'],
      internalCalling: map['internalCalling'],
      domesticCalling: map['domesticCalling'],
      internationalCalling: map['internationalCalling'],
      canCallInbound: map['canCallInbound'],
      canCallOutbound: map['canCallOutbound'],
      agentDeskSettingId: map['agentDeskSettingId'],
      ccmpAgentId: map['ccmpAgentId'],
      roleName: map['roleName'],
      avatarCreatorUrl: map['avatarCreatorUrl'],
      ciscoSkillUrl: map['ciscoSkillUrl'],
      ciscoSkillName: map['ciscoSkillName'],
      id: map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(userName: $userName, name: $name, surname: $surname, emailAddress: $emailAddress, isActive: $isActive, fullName: $fullName, isUsePhone: $isUsePhone, shortPhone: $shortPhone, phoneNumber: $phoneNumber, lastLoginTime: $lastLoginTime, creationDate: $creationDate, roleNames: $roleNames, groupName: $groupName, agentStatus: $agentStatus, lastUpdateDate: $lastUpdateDate, userRoleId: $userRoleId, creatorName: $creatorName, creatorId: $creatorId, totalLoginAttempt: $totalLoginAttempt, maxNumberOfConversation: $maxNumberOfConversation, address: $address, dateOfBirth: $dateOfBirth, gender: $gender, avatarUrl: $avatarUrl, ringDurationBeforeNext: $ringDurationBeforeNext, pendingTimeAfterCall: $pendingTimeAfterCall, autoAnswer: $autoAnswer, callOutLimit: $callOutLimit, callOutDurationLimit: $callOutDurationLimit, internalCalling: $internalCalling, domesticCalling: $domesticCalling, internationalCalling: $internationalCalling, canCallInbound: $canCallInbound, canCallOutbound: $canCallOutbound, agentDeskSettingId: $agentDeskSettingId, ccmpAgentId: $ccmpAgentId, roleName: $roleName, avatarCreatorUrl: $avatarCreatorUrl, ciscoSkillUrl: $ciscoSkillUrl, ciscoSkillName: $ciscoSkillName, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.userName == userName &&
        other.name == name &&
        other.surname == surname &&
        other.emailAddress == emailAddress &&
        other.isActive == isActive &&
        other.fullName == fullName &&
        other.isUsePhone == isUsePhone &&
        other.shortPhone == shortPhone &&
        other.phoneNumber == phoneNumber &&
        other.lastLoginTime == lastLoginTime &&
        other.creationDate == creationDate &&
        listEquals(other.roleNames, roleNames) &&
        listEquals(other.groupName, groupName) &&
        other.agentStatus == agentStatus &&
        other.lastUpdateDate == lastUpdateDate &&
        other.userRoleId == userRoleId &&
        other.creatorName == creatorName &&
        other.creatorId == creatorId &&
        other.totalLoginAttempt == totalLoginAttempt &&
        other.maxNumberOfConversation == maxNumberOfConversation &&
        other.address == address &&
        other.dateOfBirth == dateOfBirth &&
        other.gender == gender &&
        other.avatarUrl == avatarUrl &&
        other.ringDurationBeforeNext == ringDurationBeforeNext &&
        other.pendingTimeAfterCall == pendingTimeAfterCall &&
        other.autoAnswer == autoAnswer &&
        other.callOutLimit == callOutLimit &&
        other.callOutDurationLimit == callOutDurationLimit &&
        other.internalCalling == internalCalling &&
        other.domesticCalling == domesticCalling &&
        other.internationalCalling == internationalCalling &&
        other.canCallInbound == canCallInbound &&
        other.canCallOutbound == canCallOutbound &&
        other.agentDeskSettingId == agentDeskSettingId &&
        other.ccmpAgentId == ccmpAgentId &&
        other.roleName == roleName &&
        other.avatarCreatorUrl == avatarCreatorUrl &&
        other.ciscoSkillUrl == ciscoSkillUrl &&
        other.ciscoSkillName == ciscoSkillName &&
        other.id == id;
  }

  @override
  int get hashCode {
    return userName.hashCode ^
        name.hashCode ^
        surname.hashCode ^
        emailAddress.hashCode ^
        isActive.hashCode ^
        fullName.hashCode ^
        isUsePhone.hashCode ^
        shortPhone.hashCode ^
        phoneNumber.hashCode ^
        lastLoginTime.hashCode ^
        creationDate.hashCode ^
        roleNames.hashCode ^
        groupName.hashCode ^
        agentStatus.hashCode ^
        lastUpdateDate.hashCode ^
        userRoleId.hashCode ^
        creatorName.hashCode ^
        creatorId.hashCode ^
        totalLoginAttempt.hashCode ^
        maxNumberOfConversation.hashCode ^
        address.hashCode ^
        dateOfBirth.hashCode ^
        gender.hashCode ^
        avatarUrl.hashCode ^
        ringDurationBeforeNext.hashCode ^
        pendingTimeAfterCall.hashCode ^
        autoAnswer.hashCode ^
        callOutLimit.hashCode ^
        callOutDurationLimit.hashCode ^
        internalCalling.hashCode ^
        domesticCalling.hashCode ^
        internationalCalling.hashCode ^
        canCallInbound.hashCode ^
        canCallOutbound.hashCode ^
        agentDeskSettingId.hashCode ^
        ccmpAgentId.hashCode ^
        roleName.hashCode ^
        avatarCreatorUrl.hashCode ^
        ciscoSkillUrl.hashCode ^
        ciscoSkillName.hashCode ^
        id.hashCode;
  }
}
