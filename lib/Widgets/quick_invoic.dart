import 'package:dashboard/Widgets/latest_transaction.dart';
import 'package:dashboard/Widgets/quick_invoice_form.dart';
import 'package:dashboard/Widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/Widgets/custom_background_widget.dart';

class QuickInvoic extends StatelessWidget {
  const QuickInvoic({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoicHeader(),
          LatestTransaction(),
          Divider(
            height: 50,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
