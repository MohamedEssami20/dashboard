import 'package:dashboard/Models/all_expenses_item_model.dart';
import 'package:dashboard/Utils/app_images.dart';
import 'package:dashboard/Widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItemListveiw extends StatefulWidget {
  const AllExpensesItemListveiw({super.key});
  static const List items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: "Balance",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: "Income",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: "Expenses",
        date: "April 2022",
        price: r"$20,129"),
  ];

  @override
  State<AllExpensesItemListveiw> createState() =>
      _AllExpensesItemListveiwState();
}

class _AllExpensesItemListveiwState extends State<AllExpensesItemListveiw> {
  int myindex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: AllExpensesItemListveiw.items.asMap().entries.map((e) {
      int index = e.key;
      var value = e.value;
      if (index == 1) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateState(index);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(
                allExpensesItemModel: value,
                isActive: myindex == index,
              ),
            ),
          ),
        );
      } else {
        return Expanded(
            child: GestureDetector(
          onTap: () {
            updateState(index);
          },
          child: AllExpensesItem(
            allExpensesItemModel: value,
            isActive: myindex == index,
          ),
        ));
      }
    }).toList());
  }

  void updateState(int index) {
    setState(() {
      myindex = index;
    });
  }
}
