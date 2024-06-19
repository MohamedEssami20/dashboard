import 'package:dashboard/Widgets/all_expenses.dart';
import 'package:dashboard/Widgets/quick_invoic.dart';
import 'package:flutter/material.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({super.key});

   @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          AllExpenses(),
          SizedBox(
            height: 25,
          ),
          QuickInvoic(),
        ],
      ),
    );
  }
}
