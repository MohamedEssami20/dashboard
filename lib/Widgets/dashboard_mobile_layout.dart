import 'package:dashboard/Widgets/all_expenses_and_quick_invoice.dart';
import 'package:dashboard/Widgets/income_section.dart';
import 'package:dashboard/Widgets/my_card_and_transaction_history_section.dart';
import 'package:flutter/material.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [
        AllExpensesAndQuickInvoice(),
        SizedBox(
          height: 24,
        ),
        MyCardAndTransactionHistorySection(),
        SizedBox(
          height: 24,
        ),
        IncomeSection(),
      ]),
    );
  }
}
