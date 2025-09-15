import 'package:flutter/material.dart';
import '../models/drawer_item_model.dart';
import '../utils/app_images.dart';
import 'drawer_item.dart';

class DrawerItemsList extends StatefulWidget {
  const DrawerItemsList({super.key});

  @override
  State<DrawerItemsList> createState() =>
      _DrawerItemsListState();
}

class _DrawerItemsListState extends State<DrawerItemsList> {
  int selectedIndex = 0;
  final List<DrawerItemModel> items = [
    DrawerItemModel(
      image: Assets.imagesDashBoard,
      title: 'Dashboard',
    ),
    DrawerItemModel(
      image: Assets.imagesTransactions,
      title: 'My Transaction',
    ),
    DrawerItemModel(
      image: Assets.imagesStatistics,
      title: 'Statistics',
    ),
    DrawerItemModel(
      image: Assets.imagesWalltet,
      title: 'Wallet Account',
    ),
    DrawerItemModel(
      image: Assets.imagesInvestments,
      title: 'My Investments',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (selectedIndex != index) {
            setState(() {
              selectedIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(
            item: items[index],
            isActive: selectedIndex == index,
          ),
        ),
      ),
    );
  }
}
