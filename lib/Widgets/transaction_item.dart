import 'package:dashboard/Models/transaction_model.dart';
import 'package:dashboard/Utils/app_style.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyle.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style:
              AppStyle.styleRegular16(context).copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyle.styleSemiBold20(context).copyWith(
            color: transactionModel.iswithdraw == true
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
