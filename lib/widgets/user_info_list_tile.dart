import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

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
          title: Text(
            data.title,
            style: AppStyle.styleBold16,
          ),
          subtitle: Text(
            data.subTitle,
            style: AppStyle.styleRegular12,
          ),
        ),
      ),
    );
  }
}
