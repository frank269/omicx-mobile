import 'package:flutter/material.dart';
import 'package:omicx_v2/app/data/models/models.dart';
import 'package:intl/intl.dart';

class ContactDetailBody extends StatelessWidget {
  const ContactDetailBody({Key? key, required this.item}) : super(key: key);
  final ContactDetail item;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${item.fullName}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Thông tin liên hệ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Table(
                columnWidths: const <int, TableColumnWidth>{
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(2),
                },
                children: [
                  buildRow('Email:', item.email),
                  buildRow('Số điện thoại 1:', item.phoneNumber1),
                  buildRow('Số điện thoại 2:', item.phoneNumber2),
                  buildRow('ID Chat:', ''),
                ],
              ),
              Text(
                'Thông tin chung',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Table(
                columnWidths: const <int, TableColumnWidth>{
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(2),
                },
                children: [
                  buildRow('Chứng minh thư:', item.identificationCard),
                  buildRow(
                      'Giới tính:',
                      item.gender == null || item.gender == 0
                          ? ''
                          : (item.gender == 1 ? 'Nam' : 'Nữ')),
                  buildRow(
                      'Ngày sinh:',
                      item.birthDate == null
                          ? ''
                          : DateFormat('dd-MM-yyyy')
                              .format(DateTime.parse(item.birthDate!))),
                  buildRow('Nhóm KH:', item.contactGroup),
                  buildRow('Người phụ trách:', item.agentName),
                  buildRow('Tương tác gần nhất:', ''),
                  buildRow('Công ty:', item.companyName),
                  buildRow('Nghề nghiệp:', item.occupationName),
                  buildRow('Thu Nhập:', item.income),
                  buildRow('Địa chỉ:', item.address),
                  buildRow('Quốc gia:', item.countryId),
                  buildRow('Tỉnh/Thành phố:', item.provinceId),
                  buildRow('Quận/Huyện:', item.districtId),
                  buildRow('Phương thức liên hệ mong muốn:', item.channelType),
                  buildRow('Mức độ tiềm năng:', item.potentialLevel),
                  buildRow('Nhu cầu vay:', item.loan),
                  buildRow('Tài sản vay:', item.assetType),
                  buildRow('Trạng thái:', item.isActive),
                  buildRow('Trạng thái chi tiết:', item.description),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildRow(title, value) => TableRow(
        children: [
          Container(
            height: 40,
            child: Text(title),
          ),
          Container(
            height: 40,
            child: Text(value == null ? '' : '$value'),
          ),
        ],
      );
}
