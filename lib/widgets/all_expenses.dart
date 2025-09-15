import 'package:flutter/material.dart';

import 'all_expenses_header.dart';
import 'all_expenses_item_list.dart';
import 'custom_background.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemList(),
        ],
      ),
    );
  }
}
