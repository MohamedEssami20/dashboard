import 'package:dashboard/Utils/app_style.dart';
import 'package:dashboard/Widgets/option_widet.dart';
import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          "All Expenses",
          style: AppStyle.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const OptinonsWidget(),
      ],
    );
  }
}
