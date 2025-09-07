import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyle.styleSemiBold20,
        ),
        Spacer(),

        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffFAFAFA),
          ),
          width: 60,
          height: 60,
          child: Center(
            child: Icon(
              Icons.add,
              color: Color(0xff4EB7F2),
            ),
          ),
        ),
      ],
    );
  }
}
