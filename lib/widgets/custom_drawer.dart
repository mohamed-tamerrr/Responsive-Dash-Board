import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_inactive_items.dart';
import 'package:responsive_dash_board/widgets/drawer_items_list.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              title: "Mohamed Tamer",
              subTitle: 'xxtamerzz@gmail.com',
              image: Assets.imagesAvatar3,
            ),
          ),
          DrawerItemsList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
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
