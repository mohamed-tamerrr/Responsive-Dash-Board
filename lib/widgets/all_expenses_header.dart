import 'package:flutter/material.dart';
import '../utils/app_style.dart';
import 'range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyle.styleSemiBold20(context),
        ),
        Spacer(),
        RangeOptions(),
      ],
    );
  }
}
