import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'text_tile.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextTile(
                msg: 'Type customer name',
                title: 'Customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TextTile(
                msg: 'Type customer Email',
                title: 'Customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TextTile(
                msg: 'Type customer name',
                title: 'Item name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TextTile(
                msg: 'USD',
                title: 'Item mount',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                textColor: Color(0xFF4DB7F2),
                backgourndColor: Color(0xffFFFFFF),
              ),
            ),
            SizedBox(height: 24),
            Expanded(
              child: CustomButton(
                textColor: Color(0xffFFFFFF),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
