import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.item});

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.image),
      title: FittedBox(
        alignment: AlignmentGeometry.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          item.title,
          style: AppStyle.styleRegular16(context),
        ),
      ),
    );
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.item});

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.image),
      title: Text(
        item.title,
        style: AppStyle.styleBold16(context),
      ),
      trailing: Container(
        width: 3.27,
        color: Color(0xff4EB7F2),
      ),
    );
  }
}
