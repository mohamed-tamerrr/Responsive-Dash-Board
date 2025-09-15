import 'package:flutter/material.dart';

import '../models/item_expenses_model.dart';
import 'inactive_and_active_expenses_item.dart';

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
