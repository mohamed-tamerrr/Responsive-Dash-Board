import 'package:flutter/material.dart';
import '../models/item_expenses_model.dart';
import '../utils/app_images.dart';
import 'all_expenses_item.dart';

class AllExpensesItemList extends StatefulWidget {
  AllExpensesItemList({super.key});

  @override
  State<AllExpensesItemList> createState() =>
      _AllExpensesItemListState();
}

class _AllExpensesItemListState
    extends State<AllExpensesItemList> {
  final List<ItemExpensesModel> items = [
    ItemExpensesModel(
      date: 'April 2022',
      image: Assets.imagesBalance,
      money: r'$20,129',
      title: 'Balance',
    ),
    ItemExpensesModel(
      date: 'April 2022',
      image: Assets.imagesIncome,
      money: r'$20,129',
      title: 'Income',
    ),
    ItemExpensesModel(
      date: 'April 2022',
      image: Assets.imagesExpenses,
      money: r'$20,129',
      title: 'Expenses',
    ),
  ];
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                update(0);
              });
            },
            child: AllExpensesItem(
              item: items[0],
              isActive: isSelected == 0,
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                update(1);
              });
            },
            child: AllExpensesItem(
              item: items[1],
              isActive: isSelected == 1,
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                update(2);
              });
            },
            child: AllExpensesItem(
              item: items[2],
              isActive: isSelected == 2,
            ),
          ),
        ),
      ],

      //  items.asMap().entries.map((e) {
      //   int index = e.key;
      //   var item = e.value;
      //   return Expanded(
      //     child: Padding(
      //       padding: EdgeInsets.symmetric(
      //         horizontal: index == 1 ? 12 : 0,
      //       ),
      //       child: GestureDetector(
      //         onTap: () {
      //           setState(() {
      //             update(index);
      //           });
      //         },
      //         child: AllExpensesItem(
      //           item: item,
      //           isActive: isSelected == index,
      //         ),
      //       ),
      //     ),
      //   );
      // }).toList(),
    );
  }

  update(int index) {
    isSelected = index;
  }
}
