import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.msg});
  final String msg;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hint: Text(
          msg,
          style: AppStyle.styleRegular16.copyWith(
            color: Color(0xffAAAAAA),
          ),
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
