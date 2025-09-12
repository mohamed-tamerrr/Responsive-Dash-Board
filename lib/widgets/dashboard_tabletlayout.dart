import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpensesAndQuickInvoice(),
                SizedBox(height: 24),
                IncomeSection(),
              ],
            ),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
