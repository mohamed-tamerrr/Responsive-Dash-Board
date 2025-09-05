import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_expenses_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';
import 'package:responsive_dash_board/widgets/inactive_and_active_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.item,
    required this.isActive,
  });
  final ItemExpensesModel item;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesItem(item: item)
        : InActiveAllExpensesItem(item: item);
  }
}
