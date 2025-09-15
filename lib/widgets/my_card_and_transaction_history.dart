import 'package:flutter/material.dart';
import 'custom_background.dart';
import 'my_card_section.dart';
import 'transactions_history.dart';

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
