import 'dart:convert';

import 'package:omicx_v2/app/data/models/models.dart';

class ContactEditParam {
  String? address;
  String? assetType;
  String? birthDate;
  String? companyName;
  String? connection;
  String? contactGroup;
  String? fullName;
  int? income;
  int? gender;
  String? identificationCard;
  String? loan;
  String? occupationName;
  String? potentialLevel;
  int? userTakeCareId;
  int? districtId;
  int? provinceId;
  String? nation;
  ContactEditParam({
    this.address,
    this.assetType,
    this.birthDate,
    this.companyName,
    this.connection,
    this.contactGroup,
    this.fullName,
    this.income,
    this.gender,
    this.identificationCard,
    this.loan,
    this.occupationName,
    this.potentialLevel,
    this.userTakeCareId,
    this.districtId,
    this.provinceId,
    this.nation,
  });

  ContactEditParam copyWith({
    String? address,
    String? assetType,
    String? birthDate,
    String? companyName,
    String? connection,
    String? contactGroup,
    String? fullName,
    int? income,
    int? gender,
    String? identificationCard,
    String? loan,
    String? occupationName,
    String? potentialLevel,
    int? userTakeCareId,
    int? districtId,
    int? provinceId,
    String? nation,
  }) {
    return ContactEditParam(
      address: address ?? this.address,
      assetType: assetType ?? this.assetType,
      birthDate: birthDate ?? this.birthDate,
      companyName: companyName ?? this.companyName,
      connection: connection ?? this.connection,
      contactGroup: contactGroup ?? this.contactGroup,
      fullName: fullName ?? this.fullName,
      income: income ?? this.income,
      gender: gender ?? this.gender,
      identificationCard: identificationCard ?? this.identificationCard,
      loan: loan ?? this.loan,
      occupationName: occupationName ?? this.occupationName,
      potentialLevel: potentialLevel ?? this.potentialLevel,
      userTakeCareId: userTakeCareId ?? this.userTakeCareId,
      districtId: districtId ?? this.districtId,
      provinceId: provinceId ?? this.provinceId,
      nation: nation ?? this.nation,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'address': address,
      'assetType': assetType,
      'birthDate': birthDate,
      'companyName': companyName,
      'connection': connection,
      'contactGroup': contactGroup,
      'fullName': fullName,
      'income': income,
      'gender': gender,
      'identificationCard': identificationCard,
      'loan': loan,
      'occupationName': occupationName,
      'potentialLevel': potentialLevel,
      'userTakeCareId': userTakeCareId,
      'districtId': districtId,
      'provinceId': provinceId,
      'nation': nation,
    };
  }

  factory ContactEditParam.fromMap(Map<String, dynamic> map) {
    return ContactEditParam(
      address: map['address'],
      assetType: map['assetType'],
      birthDate: map['birthDate'],
      companyName: map['companyName'],
      connection: map['connection'],
      contactGroup: map['contactGroup'],
      fullName: map['fullName'],
      income: map['income'],
      gender: map['gender'],
      identificationCard: map['identificationCard'],
      loan: map['loan'],
      occupationName: map['occupationName'],
      potentialLevel: map['potentialLevel'],
      userTakeCareId: map['userTakeCareId'],
      districtId: map['districtId'],
      provinceId: map['provinceId'],
      nation: map['nation'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactEditParam.fromJson(String source) =>
      ContactEditParam.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ContactEditParam(address: $address, assetType: $assetType, birthDate: $birthDate, companyName: $companyName, connection: $connection, contactGroup: $contactGroup, fullName: $fullName, income: $income, gender: $gender, identificationCard: $identificationCard, loan: $loan, occupationName: $occupationName, potentialLevel: $potentialLevel, userTakeCareId: $userTakeCareId, districtId: $districtId, provinceId: $provinceId, nation: $nation)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ContactEditParam &&
        other.address == address &&
        other.assetType == assetType &&
        other.birthDate == birthDate &&
        other.companyName == companyName &&
        other.connection == connection &&
        other.contactGroup == contactGroup &&
        other.fullName == fullName &&
        other.income == income &&
        other.gender == gender &&
        other.identificationCard == identificationCard &&
        other.loan == loan &&
        other.occupationName == occupationName &&
        other.potentialLevel == potentialLevel &&
        other.userTakeCareId == userTakeCareId &&
        other.districtId == districtId &&
        other.provinceId == provinceId &&
        other.nation == nation;
  }

  @override
  int get hashCode {
    return address.hashCode ^
        assetType.hashCode ^
        birthDate.hashCode ^
        companyName.hashCode ^
        connection.hashCode ^
        contactGroup.hashCode ^
        fullName.hashCode ^
        income.hashCode ^
        gender.hashCode ^
        identificationCard.hashCode ^
        loan.hashCode ^
        occupationName.hashCode ^
        potentialLevel.hashCode ^
        userTakeCareId.hashCode ^
        districtId.hashCode ^
        provinceId.hashCode ^
        nation.hashCode;
  }

  static ContactEditParam fromDetail(ContactDetail item) {
    return ContactEditParam(
      address: item.address,
      assetType: item.assetType,
      birthDate: item.birthDate,
      companyName: item.companyName,
      contactGroup: item.contactGroup,
      fullName: item.fullName,
      income: item.income,
      gender: item.gender,
      identificationCard: item.identificationCard,
      loan: item.loan,
      occupationName: item.occupationName,
      potentialLevel: item.potentialLevel,
      userTakeCareId: item.userTakeCareId,
      districtId: item.districtId,
      provinceId: item.provinceId,
    );
  }
}
