import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_expenses_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.item,
  });

  final ItemExpensesModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(
          color: Color(0xffF1F1F1),
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: item.image),
          SizedBox(height: 34),
          Text(
            item.title,
            style: AppStyle.styleMedium16(context),
          ),
          SizedBox(height: 8),
          Text(
            item.date,
            style: AppStyle.styleRegular14(context),
          ),
          SizedBox(height: 16),
          Text(
            item.money,
            style: AppStyle.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.item,
  });

  final ItemExpensesModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff4EB7F2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: item.image,
            imageBackground: Colors.white.withOpacity(
              0.10000000149011612,
            ),
            imageColor: Colors.white,
          ),
          SizedBox(height: 34),
          Text(
            item.title,
            style: AppStyle.styleMedium16(
              context,
            ).copyWith(color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            item.date,
            style: AppStyle.styleRegular14(
              context,
            ).copyWith(color: Color(0xffFAFAFA)),
          ),
          SizedBox(height: 16),
          Text(
            item.money,
            style: AppStyle.styleSemiBold24(
              context,
            ).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
