import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hint: Text(
          'Type customer name',
          style: AppStyle.styleRegular16,
        ),
        filled: true,
        fillColor: Color(0xffFAFAFA),
        border: Border(),
        enabledBorder: Border(),
      ),
    );
  }

  OutlineInputBorder Border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Color(0xffFAFAFA)),
    );
  }
}
