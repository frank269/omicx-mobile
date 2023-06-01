import 'package:flutter/material.dart';
import '/app/data/models/models.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({Key? key, required this.user}) : super(key: key);
  final User user;
  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(2),
      },
      children: [
        buildRow('Họ và tên:', user.fullName),
        buildRow('Địa chỉ Email:', user.emailAddress),
        buildRow('Giới tính:', user.gender == true ? 'Nam' : 'Nữ'),
        buildRow('Ngày sinh:', user.dateOfBirth),
        buildRow('Số điện thoại:', user.shortPhone),
        buildRow('Địa chỉ:', user.address),
        buildRow('Người tạo:', user.creatorName),
        buildRow('Vai trò:', user.roleName),
        buildRow('Cấp bậc:', user.ciscoSkillName),
      ],
    );
  }

  buildRow(title, value) => TableRow(
        children: [
          Container(
            height: 30,
            child: Text(title),
          ),
          Container(
            height: 20,
            child: Text(value == null ? '' : '$value'),
          ),
        ],
      );
}
