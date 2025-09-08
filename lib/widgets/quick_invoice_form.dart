import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/text_tile.dart';

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
      ],
    );
  }
}
