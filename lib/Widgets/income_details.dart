import 'dart:developer';

import 'package:dashboard/Models/income_deatail_model.dart';
import 'package:dashboard/Widgets/items_income_details.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({
    super.key,
  });
  static const List items = [
    IncomeDeatailModel(
        title: "Design service", value: "%40", mycolor: Color(0xff208CC8)),
    IncomeDeatailModel(
        title: "Design product", value: "%25", mycolor: Color(0xff4EB7F2)),
    IncomeDeatailModel(
        title: "Product royalti", value: "%20", mycolor: Color(0xff064061)),
    IncomeDeatailModel(
        title: "Others", value: "%22", mycolor: Color(0xffE2DECD)),
  ];
  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => ItemsDetails(incomeDeatailModel: e)).toList(),
    );
  }
}
