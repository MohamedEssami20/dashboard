import 'package:dashboard/Widgets/custom_background_widget.dart';
import 'package:dashboard/Widgets/my_card_section.dart';
import 'package:dashboard/Widgets/transaction_history.dart';
import 'package:dashboard/Widgets/transaction_history_list_view.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
        child: Column(
      children: [
        MyCardSection(),
        Divider(
          height: 40,
          color: Color(0xffF1F1F1),
        ),
        TransactionHistory(),
        TransactionHistoryListView(),
      ],
    ));
  }
}
