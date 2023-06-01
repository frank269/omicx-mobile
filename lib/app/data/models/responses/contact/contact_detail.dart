import 'dart:convert';

class ContactDetail {
  String? fullName;
  String? email;
  String? phoneNumber1;
  String? phoneNumber2;
  String? contactGroup;
  String? potentialLevel;
  String? identificationCard;
  String? companyName;
  String? loan;
  String? assetType;
  int? income;
  int? gender;
  String? emailLabel;
  String? phoneNumber1Label;
  String? phoneNumber2Label;
  int? userTakeCareId;
  String? birthDate;
  String? occupationName;
  String? address;
  int? countryId;
  int? provinceId;
  int? districtId;
  int? maritalStatus;
  int? contactTypeId;
  String? description;
  String? agentName;
  String? creationTime;
  int? creatorUserId;
  String? senderId;
  String? channelType;
  bool? isActive;
  int? totalCalling;
  int? totalFBComment;
  int? totalFBChat;
  int? totalZaloChat;
  int? id;
  ContactDetail({
    this.fullName,
    this.email,
    this.phoneNumber1,
    this.phoneNumber2,
    this.contactGroup,
    this.potentialLevel,
    this.identificationCard,
    this.companyName,
    this.loan,
    this.assetType,
    this.income,
    this.gender,
    this.emailLabel,
    this.phoneNumber1Label,
    this.phoneNumber2Label,
    this.userTakeCareId,
    this.birthDate,
    this.occupationName,
    this.address,
    this.countryId,
    this.provinceId,
    this.districtId,
    this.maritalStatus,
    this.contactTypeId,
    this.description,
    this.agentName,
    this.creationTime,
    this.creatorUserId,
    this.senderId,
    this.channelType,
    this.isActive,
    this.totalCalling,
    this.totalFBComment,
    this.totalFBChat,
    this.totalZaloChat,
    this.id,
  });

  ContactDetail copyWith({
    String? fullName,
    String? email,
    String? phoneNumber1,
    String? phoneNumber2,
    String? contactGroup,
    String? potentialLevel,
    String? identificationCard,
    String? companyName,
    String? loan,
    String? assetType,
    int? income,
    int? gender,
    String? emailLabel,
    String? phoneNumber1Label,
    String? phoneNumber2Label,
    int? userTakeCareId,
    String? birthDate,
    String? occupationName,
    String? address,
    int? countryId,
    int? provinceId,
    int? districtId,
    int? maritalStatus,
    int? contactTypeId,
    String? description,
    String? agentName,
    String? creationTime,
    int? creatorUserId,
    String? senderId,
    String? channelType,
    bool? isActive,
    int? totalCalling,
    int? totalFBComment,
    int? totalFBChat,
    int? totalZaloChat,
    int? id,
  }) {
    return ContactDetail(
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      phoneNumber1: phoneNumber1 ?? this.phoneNumber1,
      phoneNumber2: phoneNumber2 ?? this.phoneNumber2,
      contactGroup: contactGroup ?? this.contactGroup,
      potentialLevel: potentialLevel ?? this.potentialLevel,
      identificationCard: identificationCard ?? this.identificationCard,
      companyName: companyName ?? this.companyName,
      loan: loan ?? this.loan,
      assetType: assetType ?? this.assetType,
      income: income ?? this.income,
      gender: gender ?? this.gender,
      emailLabel: emailLabel ?? this.emailLabel,
      phoneNumber1Label: phoneNumber1Label ?? this.phoneNumber1Label,
      phoneNumber2Label: phoneNumber2Label ?? this.phoneNumber2Label,
      userTakeCareId: userTakeCareId ?? this.userTakeCareId,
      birthDate: birthDate ?? this.birthDate,
      occupationName: occupationName ?? this.occupationName,
      address: address ?? this.address,
      countryId: countryId ?? this.countryId,
      provinceId: provinceId ?? this.provinceId,
      districtId: districtId ?? this.districtId,
      maritalStatus: maritalStatus ?? this.maritalStatus,
      contactTypeId: contactTypeId ?? this.contactTypeId,
      description: description ?? this.description,
      agentName: agentName ?? this.agentName,
      creationTime: creationTime ?? this.creationTime,
      creatorUserId: creatorUserId ?? this.creatorUserId,
      senderId: senderId ?? this.senderId,
      channelType: channelType ?? this.channelType,
      isActive: isActive ?? this.isActive,
      totalCalling: totalCalling ?? this.totalCalling,
      totalFBComment: totalFBComment ?? this.totalFBComment,
      totalFBChat: totalFBChat ?? this.totalFBChat,
      totalZaloChat: totalZaloChat ?? this.totalZaloChat,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'email': email,
      'phoneNumber1': phoneNumber1,
      'phoneNumber2': phoneNumber2,
      'contactGroup': contactGroup,
      'potentialLevel': potentialLevel,
      'identificationCard': identificationCard,
      'companyName': companyName,
      'loan': loan,
      'assetType': assetType,
      'income': income,
      'gender': gender,
      'emailLabel': emailLabel,
      'phoneNumber1Label': phoneNumber1Label,
      'phoneNumber2Label': phoneNumber2Label,
      'userTakeCareId': userTakeCareId,
      'birthDate': birthDate,
      'occupationName': occupationName,
      'address': address,
      'countryId': countryId,
      'provinceId': provinceId,
      'districtId': districtId,
      'maritalStatus': maritalStatus,
      'contactTypeId': contactTypeId,
      'description': description,
      'agentName': agentName,
      'creationTime': creationTime,
      'creatorUserId': creatorUserId,
      'senderId': senderId,
      'channelType': channelType,
      'isActive': isActive,
      'totalCalling': totalCalling,
      'totalFBComment': totalFBComment,
      'totalFBChat': totalFBChat,
      'totalZaloChat': totalZaloChat,
      'id': id,
    };
  }

  factory ContactDetail.fromMap(Map<String, dynamic> map) {
    return ContactDetail(
      fullName: map['fullName'],
      email: map['email'],
      phoneNumber1: map['phoneNumber1'],
      phoneNumber2: map['phoneNumber2'],
      contactGroup: map['contactGroup'],
      potentialLevel: map['potentialLevel'],
      identificationCard: map['identificationCard'],
      companyName: map['companyName'],
      loan: map['loan'],
      assetType: map['assetType'],
      income: map['income'],
      gender: map['gender'],
      emailLabel: map['emailLabel'],
      phoneNumber1Label: map['phoneNumber1Label'],
      phoneNumber2Label: map['phoneNumber2Label'],
      userTakeCareId: map['userTakeCareId'],
      birthDate: map['birthDate'],
      occupationName: map['occupationName'],
      address: map['address'],
      countryId: map['countryId'],
      provinceId: map['provinceId'],
      districtId: map['districtId'],
      maritalStatus: map['maritalStatus'],
      contactTypeId: map['contactTypeId'],
      description: map['description'],
      agentName: map['agentName'],
      creationTime: map['creationTime'],
      creatorUserId: map['creatorUserId'],
      senderId: map['senderId'],
      channelType: map['channelType'],
      isActive: map['isActive'],
      totalCalling: map['totalCalling'],
      totalFBComment: map['totalFBComment'],
      totalFBChat: map['totalFBChat'],
      totalZaloChat: map['totalZaloChat'],
      id: map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactDetail.fromJson(String source) =>
      ContactDetail.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ContactByID(fullName: $fullName, email: $email, phoneNumber1: $phoneNumber1, phoneNumber2: $phoneNumber2, contactGroup: $contactGroup, potentialLevel: $potentialLevel, identificationCard: $identificationCard, companyName: $companyName, loan: $loan, assetType: $assetType, income: $income, gender: $gender, emailLabel: $emailLabel, phoneNumber1Label: $phoneNumber1Label, phoneNumber2Label: $phoneNumber2Label, userTakeCareId: $userTakeCareId, birthDate: $birthDate, occupationName: $occupationName, address: $address, countryId: $countryId, provinceId: $provinceId, districtId: $districtId, maritalStatus: $maritalStatus, contactTypeId: $contactTypeId, description: $description, agentName: $agentName, creationTime: $creationTime, creatorUserId: $creatorUserId, senderId: $senderId, channelType: $channelType, isActive: $isActive, totalCalling: $totalCalling, totalFBComment: $totalFBComment, totalFBChat: $totalFBChat, totalZaloChat: $totalZaloChat, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ContactDetail &&
        other.fullName == fullName &&
        other.email == email &&
        other.phoneNumber1 == phoneNumber1 &&
        other.phoneNumber2 == phoneNumber2 &&
        other.contactGroup == contactGroup &&
        other.potentialLevel == potentialLevel &&
        other.identificationCard == identificationCard &&
        other.companyName == companyName &&
        other.loan == loan &&
        other.assetType == assetType &&
        other.income == income &&
        other.gender == gender &&
        other.emailLabel == emailLabel &&
        other.phoneNumber1Label == phoneNumber1Label &&
        other.phoneNumber2Label == phoneNumber2Label &&
        other.userTakeCareId == userTakeCareId &&
        other.birthDate == birthDate &&
        other.occupationName == occupationName &&
        other.address == address &&
        other.countryId == countryId &&
        other.provinceId == provinceId &&
        other.districtId == districtId &&
        other.maritalStatus == maritalStatus &&
        other.contactTypeId == contactTypeId &&
        other.description == description &&
        other.agentName == agentName &&
        other.creationTime == creationTime &&
        other.creatorUserId == creatorUserId &&
        other.senderId == senderId &&
        other.channelType == channelType &&
        other.isActive == isActive &&
        other.totalCalling == totalCalling &&
        other.totalFBComment == totalFBComment &&
        other.totalFBChat == totalFBChat &&
        other.totalZaloChat == totalZaloChat &&
        other.id == id;
  }

  @override
  int get hashCode {
    return fullName.hashCode ^
        email.hashCode ^
        phoneNumber1.hashCode ^
        phoneNumber2.hashCode ^
        contactGroup.hashCode ^
        potentialLevel.hashCode ^
        identificationCard.hashCode ^
        companyName.hashCode ^
        loan.hashCode ^
        assetType.hashCode ^
        income.hashCode ^
        gender.hashCode ^
        emailLabel.hashCode ^
        phoneNumber1Label.hashCode ^
        phoneNumber2Label.hashCode ^
        userTakeCareId.hashCode ^
        birthDate.hashCode ^
        occupationName.hashCode ^
        address.hashCode ^
        countryId.hashCode ^
        provinceId.hashCode ^
        districtId.hashCode ^
        maritalStatus.hashCode ^
        contactTypeId.hashCode ^
        description.hashCode ^
        agentName.hashCode ^
        creationTime.hashCode ^
        creatorUserId.hashCode ^
        senderId.hashCode ^
        channelType.hashCode ^
        isActive.hashCode ^
        totalCalling.hashCode ^
        totalFBComment.hashCode ^
        totalFBChat.hashCode ^
        totalZaloChat.hashCode ^
        id.hashCode;
  }
}
