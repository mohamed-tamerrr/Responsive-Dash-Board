import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';

class TextTile extends StatelessWidget {
  const TextTile({
    super.key,
    required this.title,
    required this.msg,
  });
  final String title, msg;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyle.styleMedium16),
        SizedBox(height: 12),
        CustomTextField(msg: msg),
      ],
    );
  }
}
