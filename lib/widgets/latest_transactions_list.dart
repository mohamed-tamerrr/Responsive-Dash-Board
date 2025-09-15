import 'package:flutter/material.dart';
import '../models/user_info_model.dart';
import '../utils/app_images.dart';
import 'user_info_list_tile.dart';

class LatestTransactionsList extends StatelessWidget {
  const LatestTransactionsList({super.key});
  static List<UserInfo> users = [
    UserInfo(
      image: Assets.imagesAvatar1,
      subTitle: 'Madrani andi',
      title: 'Madraniadi20@gmail',
    ),
    UserInfo(
      image: Assets.imagesAvatar1,
      subTitle: 'Madrani andi',
      title: 'Madraniadi20@gmail',
    ),
    UserInfo(
      image: Assets.imagesAvatar1,
      subTitle: 'Madrani andi',
      title: 'Madraniadi20@gmail',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: users.length,
        itemBuilder: (context, index) => IntrinsicWidth(
          child: UserInfoListTile(data: users[index]),
        ),
      ),
    );
  }
}
