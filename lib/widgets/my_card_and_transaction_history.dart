import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';
import 'package:responsive_dash_board/widgets/transactions_history.dart';

class MyCardsAndTransctionHistorySection
    extends StatelessWidget {
  const MyCardsAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(height: 40, color: Color(0xffF1F1F1)),
          TransactionsHistory(),
        ],
      ),
    );
  }
}
