import 'package:dashboard/Widgets/all_expenses_header.dart';
import 'package:dashboard/Widgets/all_expenses_item_listveiw.dart';
import 'package:dashboard/Widgets/custom_background_widget.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child:   Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListveiw(),
        ],
      ),
    );
  }
}

