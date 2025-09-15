import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';
import 'package:responsive_dash_board/widgets/transactions_history_list.dart';

class TransactionsHistory extends StatelessWidget {
  const TransactionsHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HistoryTransactionsHeader(),
        SizedBox(height: 20),
        Text(
          '13 April 2022',
          style: AppStyle.styleMedium16(
            context,
          ).copyWith(color: const Color(0xFFAAAAAA)),
        ),
        SizedBox(height: 16),
        TransctionHistoryListView(),
      ],
    );
  }
}

class HistoryTransactionsHeader extends StatelessWidget {
  const HistoryTransactionsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyle.styleSemiBold20(context),
        ),
        Text(
          'See all',
          style: AppStyle.styleMedium16(
            context,
          ).copyWith(color: Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
