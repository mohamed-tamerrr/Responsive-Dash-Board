import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_expenses_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_list.dart';
import 'package:responsive_dash_board/widgets/custom_background.dart';

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
