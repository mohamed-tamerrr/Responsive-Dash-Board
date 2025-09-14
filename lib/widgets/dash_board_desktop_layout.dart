import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dash_board/widgets/custom_dot.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transaction_history.dart';
import 'package:responsive_dash_board/widgets/my_card_page_view.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';
import 'package:responsive_dash_board/widgets/transactions_history.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 40.0,
                        ),
                        child: AllExpensesAndQuickInvoice(),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          MyCardsAndTransctionHistorySection(),
                          SizedBox(height: 24),
                          Expanded(child: IncomeSection()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
