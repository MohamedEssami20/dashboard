import 'package:dashboard/Models/transaction_model.dart';
import 'package:dashboard/Widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionModel> items = [
    TransactionModel(
        title: "Cash Withdrawal",
        date: "13 Apr, 2022 ",
        amount: r"$20,129",
        iswithdraw: true),
    TransactionModel(
        title: "Landing Page project",
        date: "13 Apr, 2022 at 3:30 PM ",
        amount: r"$2,000",
        iswithdraw: false),
    TransactionModel(
        title: "Juni Mobile App project",
        date: "13 Apr, 2022 at 3:30 PM",
        amount: r"$20,129",
        iswithdraw: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
  }
}
