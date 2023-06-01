import 'dart:convert';

import 'package:flutter/foundation.dart';

class ContactRelation {
  int? totalCount;
  List<Contact?>? items;
  ContactRelation({
    this.totalCount,
    this.items,
  });

  ContactRelation copyWith({
    int? totalCount,
    List<Contact?>? items,
  }) {
    return ContactRelation(
      totalCount: totalCount ?? this.totalCount,
      items: items ?? this.items,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'totalCount': totalCount,
      'items': items?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory ContactRelation.fromMap(Map<String, dynamic> map) {
    return ContactRelation(
      totalCount: map['totalCount'],
      items: map['items'] == null
          ? null
          : List<Contact?>.from(map['items']?.map((x) => Contact?.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactRelation.fromJson(String source) =>
      ContactRelation.fromMap(json.decode(source));

  @override
  String toString() =>
      'ContactRelation(totalCount: $totalCount, items: $items)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ContactRelation &&
        other.totalCount == totalCount &&
        listEquals(other.items, items);
  }

  @override
  int get hashCode => totalCount.hashCode ^ items.hashCode;
}

class Contact {
  String? fullName;
  String? email;
  String? phoneNumber1;
  String? phoneNumber2;
  int? gender;
  String? birthDate;
  String? address;
  int? districtId;
  int? provinceId;
  int? countryId;
  int? personInChargeId;
  String? occupationName;
  String? companyName;
  int? maritalStatus;
  int? contactTypeId;
  String? description;
  bool? isActive;
  String? isActiveStr;
  int? userTakeCareId;
  String? contactGroup;
  String? lastUpdate;
  String? spouse;
  List<int?>? listIdPaired;
  List<ContactChannel?>? contactChannels;
  String? userTakeCare;
  String? loan;
  String? assetType;
  String? contractNo;
  String? contractCreateDate;
  String? creditScore;
  String? contractStatus;
  String? contractPresident;
  int? interactCardId;
  String? prefixCampaign;
  String? switchBoardCampaign;
  int? campaignId;
  String? contactCode;
  String? transactionAgency;
  String? campaignType;
  int? id;
  Contact({
    this.fullName,
    this.email,
    this.phoneNumber1,
    this.phoneNumber2,
    this.gender,
    this.birthDate,
    this.address,
    this.districtId,
    this.provinceId,
    this.countryId,
    this.personInChargeId,
    this.occupationName,
    this.companyName,
    this.maritalStatus,
    this.contactTypeId,
    this.description,
    this.isActive,
    this.isActiveStr,
    this.userTakeCareId,
    this.contactGroup,
    this.lastUpdate,
    this.spouse,
    this.listIdPaired,
    this.contactChannels,
    this.userTakeCare,
    this.loan,
    this.assetType,
    this.contractNo,
    this.contractCreateDate,
    this.creditScore,
    this.contractStatus,
    this.contractPresident,
    this.interactCardId,
    this.prefixCampaign,
    this.switchBoardCampaign,
    this.campaignId,
    this.contactCode,
    this.transactionAgency,
    this.campaignType,
    this.id,
  });

  Contact copyWith({
    String? fullName,
    String? email,
    String? phoneNumber1,
    String? phoneNumber2,
    int? gender,
    String? birthDate,
    String? address,
    int? districtId,
    int? provinceId,
    int? countryId,
    int? personInChargeId,
    String? occupationName,
    String? companyName,
    int? maritalStatus,
    int? contactTypeId,
    String? description,
    bool? isActive,
    String? isActiveStr,
    int? userTakeCareId,
    String? contactGroup,
    String? lastUpdate,
    String? spouse,
    List<int?>? listIdPaired,
    List<ContactChannel?>? contactChannels,
    String? userTakeCare,
    String? loan,
    String? assetType,
    String? contractNo,
    String? contractCreateDate,
    String? creditScore,
    String? contractStatus,
    String? contractPresident,
    int? interactCardId,
    String? prefixCampaign,
    String? switchBoardCampaign,
    int? campaignId,
    String? contactCode,
    String? transactionAgency,
    String? campaignType,
    int? id,
  }) {
    return Contact(
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      phoneNumber1: phoneNumber1 ?? this.phoneNumber1,
      phoneNumber2: phoneNumber2 ?? this.phoneNumber2,
      gender: gender ?? this.gender,
      birthDate: birthDate ?? this.birthDate,
      address: address ?? this.address,
      districtId: districtId ?? this.districtId,
      provinceId: provinceId ?? this.provinceId,
      countryId: countryId ?? this.countryId,
      personInChargeId: personInChargeId ?? this.personInChargeId,
      occupationName: occupationName ?? this.occupationName,
      companyName: companyName ?? this.companyName,
      maritalStatus: maritalStatus ?? this.maritalStatus,
      contactTypeId: contactTypeId ?? this.contactTypeId,
      description: description ?? this.description,
      isActive: isActive ?? this.isActive,
      isActiveStr: isActiveStr ?? this.isActiveStr,
      userTakeCareId: userTakeCareId ?? this.userTakeCareId,
      contactGroup: contactGroup ?? this.contactGroup,
      lastUpdate: lastUpdate ?? this.lastUpdate,
      spouse: spouse ?? this.spouse,
      listIdPaired: listIdPaired ?? this.listIdPaired,
      contactChannels: contactChannels ?? this.contactChannels,
      userTakeCare: userTakeCare ?? this.userTakeCare,
      loan: loan ?? this.loan,
      assetType: assetType ?? this.assetType,
      contractNo: contractNo ?? this.contractNo,
      contractCreateDate: contractCreateDate ?? this.contractCreateDate,
      creditScore: creditScore ?? this.creditScore,
      contractStatus: contractStatus ?? this.contractStatus,
      contractPresident: contractPresident ?? this.contractPresident,
      interactCardId: interactCardId ?? this.interactCardId,
      prefixCampaign: prefixCampaign ?? this.prefixCampaign,
      switchBoardCampaign: switchBoardCampaign ?? this.switchBoardCampaign,
      campaignId: campaignId ?? this.campaignId,
      contactCode: contactCode ?? this.contactCode,
      transactionAgency: transactionAgency ?? this.transactionAgency,
      campaignType: campaignType ?? this.campaignType,
      id: id ?? this.id,
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
      'address': address,
      'districtId': districtId,
      'provinceId': provinceId,
      'countryId': countryId,
      'personInChargeId': personInChargeId,
      'occupationName': occupationName,
      'companyName': companyName,
      'maritalStatus': maritalStatus,
      'contactTypeId': contactTypeId,
      'description': description,
      'isActive': isActive,
      'isActiveStr': isActiveStr,
      'userTakeCareId': userTakeCareId,
      'contactGroup': contactGroup,
      'lastUpdate': lastUpdate,
      'spouse': spouse,
      'listIdPaired': listIdPaired?.map((x) => x).toList(),
      'contactChannels': contactChannels?.map((x) => x?.toMap()).toList(),
      'userTakeCare': userTakeCare,
      'loan': loan,
      'assetType': assetType,
      'contractNo': contractNo,
      'contractCreateDate': contractCreateDate,
      'creditScore': creditScore,
      'contractStatus': contractStatus,
      'contractPresident': contractPresident,
      'interactCardId': interactCardId,
      'prefixCampaign': prefixCampaign,
      'switchBoardCampaign': switchBoardCampaign,
      'campaignId': campaignId,
      'contactCode': contactCode,
      'transactionAgency': transactionAgency,
      'campaignType': campaignType,
      'id': id,
    };
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      fullName: map['fullName'],
      email: map['email'],
      phoneNumber1: map['phoneNumber1'],
      phoneNumber2: map['phoneNumber2'],
      gender: map['gender'],
      birthDate: map['birthDate'],
      address: map['address'],
      districtId: map['districtId'],
      provinceId: map['provinceId'],
      countryId: map['countryId'],
      personInChargeId: map['personInChargeId'],
      occupationName: map['occupationName'],
      companyName: map['companyName'],
      maritalStatus: map['maritalStatus'],
      contactTypeId: map['contactTypeId'],
      description: map['description'],
      isActive: map['isActive'],
      isActiveStr: map['isActiveStr'],
      userTakeCareId: map['userTakeCareId'],
      contactGroup: map['contactGroup'],
      lastUpdate: map['lastUpdate'],
      spouse: map['spouse'],
      listIdPaired: map['listIdPaired'] == null
          ? null
          : List<int?>.from(map['listIdPaired']?.map((x) => x)),
      contactChannels: map['contactChannels'] == null
          ? null
          : List<ContactChannel?>.from(
              map['contactChannels']?.map((x) => ContactChannel?.fromMap(x))),
      userTakeCare: map['userTakeCare'],
      loan: map['loan'],
      assetType: map['assetType'],
      contractNo: map['contractNo'],
      contractCreateDate: map['contractCreateDate'],
      creditScore: map['creditScore'],
      contractStatus: map['contractStatus'],
      contractPresident: map['contractPresident'],
      interactCardId: map['interactCardId'],
      prefixCampaign: map['prefixCampaign'],
      switchBoardCampaign: map['switchBoardCampaign'],
      campaignId: map['campaignId'],
      contactCode: map['contactCode'],
      transactionAgency: map['transactionAgency'],
      campaignType: map['campaignType'],
      id: map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Contact.fromJson(String source) =>
      Contact.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Contact(fullName: $fullName, email: $email, phoneNumber1: $phoneNumber1, phoneNumber2: $phoneNumber2, gender: $gender, birthDate: $birthDate, address: $address, districtId: $districtId, provinceId: $provinceId, countryId: $countryId, personInChargeId: $personInChargeId, occupationName: $occupationName, companyName: $companyName, maritalStatus: $maritalStatus, contactTypeId: $contactTypeId, description: $description, isActive: $isActive, isActiveStr: $isActiveStr, userTakeCareId: $userTakeCareId, contactGroup: $contactGroup, lastUpdate: $lastUpdate, spouse: $spouse, listIdPaired: $listIdPaired, contactChannels: $contactChannels, userTakeCare: $userTakeCare, loan: $loan, assetType: $assetType, contractNo: $contractNo, contractCreateDate: $contractCreateDate, creditScore: $creditScore, contractStatus: $contractStatus, contractPresident: $contractPresident, interactCardId: $interactCardId, prefixCampaign: $prefixCampaign, switchBoardCampaign: $switchBoardCampaign, campaignId: $campaignId, contactCode: $contactCode, transactionAgency: $transactionAgency, campaignType: $campaignType, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Contact &&
        other.fullName == fullName &&
        other.email == email &&
        other.phoneNumber1 == phoneNumber1 &&
        other.phoneNumber2 == phoneNumber2 &&
        other.gender == gender &&
        other.birthDate == birthDate &&
        other.address == address &&
        other.districtId == districtId &&
        other.provinceId == provinceId &&
        other.countryId == countryId &&
        other.personInChargeId == personInChargeId &&
        other.occupationName == occupationName &&
        other.companyName == companyName &&
        other.maritalStatus == maritalStatus &&
        other.contactTypeId == contactTypeId &&
        other.description == description &&
        other.isActive == isActive &&
        other.isActiveStr == isActiveStr &&
        other.userTakeCareId == userTakeCareId &&
        other.contactGroup == contactGroup &&
        other.lastUpdate == lastUpdate &&
        other.spouse == spouse &&
        listEquals(other.listIdPaired, listIdPaired) &&
        listEquals(other.contactChannels, contactChannels) &&
        other.userTakeCare == userTakeCare &&
        other.loan == loan &&
        other.assetType == assetType &&
        other.contractNo == contractNo &&
        other.contractCreateDate == contractCreateDate &&
        other.creditScore == creditScore &&
        other.contractStatus == contractStatus &&
        other.contractPresident == contractPresident &&
        other.interactCardId == interactCardId &&
        other.prefixCampaign == prefixCampaign &&
        other.switchBoardCampaign == switchBoardCampaign &&
        other.campaignId == campaignId &&
        other.contactCode == contactCode &&
        other.transactionAgency == transactionAgency &&
        other.campaignType == campaignType &&
        other.id == id;
  }

  @override
  int get hashCode {
    return fullName.hashCode ^
        email.hashCode ^
        phoneNumber1.hashCode ^
        phoneNumber2.hashCode ^
        gender.hashCode ^
        birthDate.hashCode ^
        address.hashCode ^
        districtId.hashCode ^
        provinceId.hashCode ^
        countryId.hashCode ^
        personInChargeId.hashCode ^
        occupationName.hashCode ^
        companyName.hashCode ^
        maritalStatus.hashCode ^
        contactTypeId.hashCode ^
        description.hashCode ^
        isActive.hashCode ^
        isActiveStr.hashCode ^
        userTakeCareId.hashCode ^
        contactGroup.hashCode ^
        lastUpdate.hashCode ^
        spouse.hashCode ^
        listIdPaired.hashCode ^
        contactChannels.hashCode ^
        userTakeCare.hashCode ^
        loan.hashCode ^
        assetType.hashCode ^
        contractNo.hashCode ^
        contractCreateDate.hashCode ^
        creditScore.hashCode ^
        contractStatus.hashCode ^
        contractPresident.hashCode ^
        interactCardId.hashCode ^
        prefixCampaign.hashCode ^
        switchBoardCampaign.hashCode ^
        campaignId.hashCode ^
        contactCode.hashCode ^
        transactionAgency.hashCode ^
        campaignType.hashCode ^
        id.hashCode;
  }
}

class ContactChannel {
  int? contactId;
  int? tenantId;
  String? chanelId;
  String? chanelType;
  String? contactName;
  String? accoutName;
  String? phoneNumber1;
  String? phoneNumber2;
  String? email;
  int? id;
  ContactChannel({
    this.contactId,
    this.tenantId,
    this.chanelId,
    this.chanelType,
    this.contactName,
    this.accoutName,
    this.phoneNumber1,
    this.phoneNumber2,
    this.email,
    this.id,
  });

  ContactChannel copyWith({
    int? contactId,
    int? tenantId,
    String? chanelId,
    String? chanelType,
    String? contactName,
    String? accoutName,
    String? phoneNumber1,
    String? phoneNumber2,
    String? email,
    int? id,
  }) {
    return ContactChannel(
      contactId: contactId ?? this.contactId,
      tenantId: tenantId ?? this.tenantId,
      chanelId: chanelId ?? this.chanelId,
      chanelType: chanelType ?? this.chanelType,
      contactName: contactName ?? this.contactName,
      accoutName: accoutName ?? this.accoutName,
      phoneNumber1: phoneNumber1 ?? this.phoneNumber1,
      phoneNumber2: phoneNumber2 ?? this.phoneNumber2,
      email: email ?? this.email,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'contactId': contactId,
      'tenantId': tenantId,
      'chanelId': chanelId,
      'chanelType': chanelType,
      'contactName': contactName,
      'accoutName': accoutName,
      'phoneNumber1': phoneNumber1,
      'phoneNumber2': phoneNumber2,
      'email': email,
      'id': id,
    };
  }

  factory ContactChannel.fromMap(Map<String, dynamic>? map) {
    return ContactChannel(
      contactId: map == null ? null : map['contactId'],
      tenantId: map == null ? null : map['tenantId'],
      chanelId: map == null ? null : map['chanelId'],
      chanelType: map == null ? null : map['chanelType'],
      contactName: map == null ? null : map['contactName'],
      accoutName: map == null ? null : map['accoutName'],
      phoneNumber1: map == null ? null : map['phoneNumber1'],
      phoneNumber2: map == null ? null : map['phoneNumber2'],
      email: map == null ? null : map['email'],
      id: map == null ? null : map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactChannel.fromJson(String source) =>
      ContactChannel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ContactChannel(contactId: $contactId, tenantId: $tenantId, chanelId: $chanelId, chanelType: $chanelType, contactName: $contactName, accoutName: $accoutName, phoneNumber1: $phoneNumber1, phoneNumber2: $phoneNumber2, email: $email, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ContactChannel &&
        other.contactId == contactId &&
        other.tenantId == tenantId &&
        other.chanelId == chanelId &&
        other.chanelType == chanelType &&
        other.contactName == contactName &&
        other.accoutName == accoutName &&
        other.phoneNumber1 == phoneNumber1 &&
        other.phoneNumber2 == phoneNumber2 &&
        other.email == email &&
        other.id == id;
  }

  @override
  int get hashCode {
    return contactId.hashCode ^
        tenantId.hashCode ^
        chanelId.hashCode ^
        chanelType.hashCode ^
        contactName.hashCode ^
        accoutName.hashCode ^
        phoneNumber1.hashCode ^
        phoneNumber2.hashCode ^
        email.hashCode ^
        id.hashCode;
  }
}
