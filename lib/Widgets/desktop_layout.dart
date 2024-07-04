import 'package:dashboard/Widgets/all_expenses_and_quick_invoice.dart';
import 'package:dashboard/Widgets/custom_drawer.dart';
import 'package:dashboard/Widgets/income_section.dart';
import 'package:dashboard/Widgets/my_card_and_transaction_history_section.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(flex: 2, child: AllExpensesAndQuickInvoice()),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 45,
                        ),
                        MyCardAndTransactionHistorySection(),
                        SizedBox(
                          height: 24,
                        ),
                        Expanded(child: IncomeSection()),
                      ],
                    )),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
