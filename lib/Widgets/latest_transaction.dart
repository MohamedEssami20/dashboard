import 'package:dashboard/Utils/app_style.dart';
import 'package:dashboard/Widgets/latest_tarnsaction_listview.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyle.styleMedium16,
        ),
        SizedBox(
          height: 16,
        ),
        LatestTarnsactionListview()
      ],
    );
  }
}
