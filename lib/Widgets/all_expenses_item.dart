import 'package:dashboard/Models/all_expenses_item_model.dart';
import 'package:dashboard/Widgets/inactive_and_active_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.allExpensesItemModel, required this.isActive});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: InActiveAllExpensesItem(
        allExpensesItemModel: allExpensesItemModel,
      ),
      secondChild:
          ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel),
      crossFadeState: isActive == false
          ? CrossFadeState.showFirst
          : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 15),
      firstCurve: Curves.easeInBack,
      secondCurve: Curves.bounceOut,
      sizeCurve: Curves.linear,
    );
  }
}
