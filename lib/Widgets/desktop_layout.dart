
import 'package:dashboard/Widgets/all_expenses_and_quick_invoice.dart';
import 'package:dashboard/Widgets/custom_drawer.dart';
import 'package:dashboard/Widgets/my_card.dart';
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
            flex: 2,
            child: AllExpensesAndQuickInvoice()),
        Expanded(child: MyCard()),
      ],
    );
  }
}


