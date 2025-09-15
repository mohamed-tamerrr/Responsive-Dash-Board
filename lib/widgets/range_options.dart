import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xffF1F1F1)),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyle.styleMedium16(context),
          ),
          SizedBox(width: 18),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}
