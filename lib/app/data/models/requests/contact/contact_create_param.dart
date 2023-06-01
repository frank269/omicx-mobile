import 'dart:convert';

class ContactCreateParam {
  String? fullName;
  String? email;
  String? phoneNumber1;
  String? phoneNumber2;
  int? gender;
  String? birthDate;
  String? occupationName;
  String? address;
  String? nation;
  int? provinceId;
  int? districtId;
  int? maritalStatus;
  int? contactTypeId;
  String? description;
  int? personInChargeId;
  String? creationTime;
  int? creatorUserId;
  int? tenantId;
  String? senderId;
  String? channelType;
  int? contactHistoryId;
  String? identificationCard;
  String? contactGroup;
  String? companyName;
  int? income;
  int? userTakeCareId;
  String? potentialLevel;
  String? loan;
  String? assetType;
  String? phoneNumber1Label;
  String? phoneNumber2Label;
  String? emailLabel;
  ContactCreateParam({
    this.fullName,
    this.email,
    this.phoneNumber1,
    this.phoneNumber2,
    this.gender,
    this.birthDate,
    this.occupationName,
    this.address,
    this.nation,
    this.provinceId,
    this.districtId,
    this.maritalStatus,
    this.contactTypeId,
    this.description,
    this.personInChargeId,
    this.creationTime,
    this.creatorUserId,
    this.tenantId,
    this.senderId,
    this.channelType,
    this.contactHistoryId,
    this.identificationCard,
    this.contactGroup,
    this.companyName,
    this.income,
    this.userTakeCareId,
    this.potentialLevel,
    this.loan,
    this.assetType,
    this.phoneNumber1Label,
    this.phoneNumber2Label,
    this.emailLabel,
  });

  ContactCreateParam copyWith({
    String? fullName,
    String? email,
    String? phoneNumber1,
    String? phoneNumber2,
    int? gender,
    String? birthDate,
    String? occupationName,
    String? address,
    String? nation,
    int? provinceId,
    int? districtId,
    int? maritalStatus,
    int? contactTypeId,
    String? description,
    int? personInChargeId,
    String? creationTime,
    int? creatorUserId,
    int? tenantId,
    String? senderId,
    String? channelType,
    int? contactHistoryId,
    String? identificationCard,
    String? contactGroup,
    String? companyName,
    int? income,
    int? userTakeCareId,
    String? potentialLevel,
    String? loan,
    String? assetType,
    String? phoneNumber1Label,
    String? phoneNumber2Label,
    String? emailLabel,
  }) {
    return ContactCreateParam(
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      phoneNumber1: phoneNumber1 ?? this.phoneNumber1,
      phoneNumber2: phoneNumber2 ?? this.phoneNumber2,
      gender: gender ?? this.gender,
      birthDate: birthDate ?? this.birthDate,
      occupationName: occupationName ?? this.occupationName,
      address: address ?? this.address,
      nation: nation ?? this.nation,
      provinceId: provinceId ?? this.provinceId,
      districtId: districtId ?? this.districtId,
      maritalStatus: maritalStatus ?? this.maritalStatus,
      contactTypeId: contactTypeId ?? this.contactTypeId,
      description: description ?? this.description,
      personInChargeId: personInChargeId ?? this.personInChargeId,
      creationTime: creationTime ?? this.creationTime,
      creatorUserId: creatorUserId ?? this.creatorUserId,
      tenantId: tenantId ?? this.tenantId,
      senderId: senderId ?? this.senderId,
      channelType: channelType ?? this.channelType,
      contactHistoryId: contactHistoryId ?? this.contactHistoryId,
      identificationCard: identificationCard ?? this.identificationCard,
      contactGroup: contactGroup ?? this.contactGroup,
      companyName: companyName ?? this.companyName,
      income: income ?? this.income,
      userTakeCareId: userTakeCareId ?? this.userTakeCareId,
      potentialLevel: potentialLevel ?? this.potentialLevel,
      loan: loan ?? this.loan,
      assetType: assetType ?? this.assetType,
      phoneNumber1Label: phoneNumber1Label ?? this.phoneNumber1Label,
      phoneNumber2Label: phoneNumber2Label ?? this.phoneNumber2Label,
      emailLabel: emailLabel ?? this.emailLabel,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'email': email,
      'phoneNumber1': phoneNumber1,
      'phoneNumber2': phoneNumber2,
      'gender': gender,
      'birthDate': birthDate,
      'occupationName': occupationName,
      'address': address,
      'nation': nation,
      'provinceId': provinceId,
      'districtId': districtId,
      'maritalStatus': maritalStatus,
      'contactTypeId': contactTypeId,
      'description': description,
      'personInChargeId': personInChargeId,
      'creationTime': creationTime,
      'creatorUserId': creatorUserId,
      'tenantId': tenantId,
      'senderId': senderId,
      'channelType': channelType,
      'contactHistoryId': contactHistoryId,
      'identificationCard': identificationCard,
      'contactGroup': contactGroup,
      'companyName': companyName,
      'income': income,
      'userTakeCareId': userTakeCareId,
      'potentialLevel': potentialLevel,
      'loan': loan,
      'assetType': assetType,
      'phoneNumber1Label': phoneNumber1Label,
      'phoneNumber2Label': phoneNumber2Label,
      'emailLabel': emailLabel,
    };
  }

  factory ContactCreateParam.fromMap(Map<String, dynamic> map) {
    return ContactCreateParam(
      fullName: map['fullName'],
      email: map['email'],
      phoneNumber1: map['phoneNumber1'],
      phoneNumber2: map['phoneNumber2'],
      gender: map['gender'],
      birthDate: map['birthDate'],
      occupationName: map['occupationName'],
      address: map['address'],
      nation: map['nation'],
      provinceId: map['provinceId'],
      districtId: map['districtId'],
      maritalStatus: map['maritalStatus'],
      contactTypeId: map['contactTypeId'],
      description: map['description'],
      personInChargeId: map['personInChargeId'],
      creationTime: map['creationTime'],
      creatorUserId: map['creatorUserId'],
      tenantId: map['tenantId'],
      senderId: map['senderId'],
      channelType: map['channelType'],
      contactHistoryId: map['contactHistoryId'],
      identificationCard: map['identificationCard'],
      contactGroup: map['contactGroup'],
      companyName: map['companyName'],
      income: map['income'],
      userTakeCareId: map['userTakeCareId'],
      potentialLevel: map['potentialLevel'],
      loan: map['loan'],
      assetType: map['assetType'],
      phoneNumber1Label: map['phoneNumber1Label'],
      phoneNumber2Label: map['phoneNumber2Label'],
      emailLabel: map['emailLabel'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactCreateParam.fromJson(String source) =>
      ContactCreateParam.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ContactCreateParam(fullName: $fullName, email: $email, phoneNumber1: $phoneNumber1, phoneNumber2: $phoneNumber2, gender: $gender, birthDate: $birthDate, occupationName: $occupationName, address: $address, nation: $nation, provinceId: $provinceId, districtId: $districtId, maritalStatus: $maritalStatus, contactTypeId: $contactTypeId, description: $description, personInChargeId: $personInChargeId, creationTime: $creationTime, creatorUserId: $creatorUserId, tenantId: $tenantId, senderId: $senderId, channelType: $channelType, contactHistoryId: $contactHistoryId, identificationCard: $identificationCard, contactGroup: $contactGroup, companyName: $companyName, income: $income, userTakeCareId: $userTakeCareId, potentialLevel: $potentialLevel, loan: $loan, assetType: $assetType, phoneNumber1Label: $phoneNumber1Label, phoneNumber2Label: $phoneNumber2Label, emailLabel: $emailLabel)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ContactCreateParam &&
        other.fullName == fullName &&
        other.email == email &&
        other.phoneNumber1 == phoneNumber1 &&
        other.phoneNumber2 == phoneNumber2 &&
        other.gender == gender &&
        other.birthDate == birthDate &&
        other.occupationName == occupationName &&
        other.address == address &&
        other.nation == nation &&
        other.provinceId == provinceId &&
        other.districtId == districtId &&
        other.maritalStatus == maritalStatus &&
        other.contactTypeId == contactTypeId &&
        other.description == description &&
        other.personInChargeId == personInChargeId &&
        other.creationTime == creationTime &&
        other.creatorUserId == creatorUserId &&
        other.tenantId == tenantId &&
        other.senderId == senderId &&
        other.channelType == channelType &&
        other.contactHistoryId == contactHistoryId &&
        other.identificationCard == identificationCard &&
        other.contactGroup == contactGroup &&
        other.companyName == companyName &&
        other.income == income &&
        other.userTakeCareId == userTakeCareId &&
        other.potentialLevel == potentialLevel &&
        other.loan == loan &&
        other.assetType == assetType &&
        other.phoneNumber1Label == phoneNumber1Label &&
        other.phoneNumber2Label == phoneNumber2Label &&
        other.emailLabel == emailLabel;
  }

  @override
  int get hashCode {
    return fullName.hashCode ^
        email.hashCode ^
        phoneNumber1.hashCode ^
        phoneNumber2.hashCode ^
        gender.hashCode ^
        birthDate.hashCode ^
        occupationName.hashCode ^
        address.hashCode ^
        nation.hashCode ^
        provinceId.hashCode ^
        districtId.hashCode ^
        maritalStatus.hashCode ^
        contactTypeId.hashCode ^
        description.hashCode ^
        personInChargeId.hashCode ^
        creationTime.hashCode ^
        creatorUserId.hashCode ^
        tenantId.hashCode ^
        senderId.hashCode ^
        channelType.hashCode ^
        contactHistoryId.hashCode ^
        identificationCard.hashCode ^
        contactGroup.hashCode ^
        companyName.hashCode ^
        income.hashCode ^
        userTakeCareId.hashCode ^
        potentialLevel.hashCode ^
        loan.hashCode ^
        assetType.hashCode ^
        phoneNumber1Label.hashCode ^
        phoneNumber2Label.hashCode ^
        emailLabel.hashCode;
  }
}
