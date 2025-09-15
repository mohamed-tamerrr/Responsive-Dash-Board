import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../models/user_info_model.dart';
import '../utils/app_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.data});
  final UserInfo data;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(data.image),
          title: FittedBox(
            alignment: AlignmentGeometry.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              data.title,
              style: AppStyle.styleBold16(context),
            ),
          ),
          subtitle: FittedBox(
            alignment: AlignmentGeometry.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              data.subTitle,
              style: AppStyle.styleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
