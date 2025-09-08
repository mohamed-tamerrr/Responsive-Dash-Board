import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';
import 'package:responsive_dash_board/widgets/latest_transactions.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';
import 'package:responsive_dash_board/widgets/text_tile.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransaction(),
          Divider(height: 48, color: Color(0xffF1F1F1)),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
