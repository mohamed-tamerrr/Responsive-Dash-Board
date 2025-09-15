import 'package:flutter/material.dart';
import '../models/drawer_item_model.dart';
import '../models/user_info_model.dart';
import '../utils/app_images.dart';
import 'active_inactive_items.dart';
import 'drawer_items_list.dart';
import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              data: UserInfo(
                image: Assets.imagesAvatar3,
                subTitle: 'xxtamerzz@gmail.com',
                title: 'Mohamed Tamer',
              ),
            ),
          ),
          DrawerItemsList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveItem(
                  item: DrawerItemModel(
                    image: Assets.imagesSetting,
                    title: 'Setting system',
                  ),
                ),
                InActiveItem(
                  item: DrawerItemModel(
                    image: Assets.imagesLogout,
                    title: 'Logout account',
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
