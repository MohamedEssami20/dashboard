import 'package:dashboard/Utils/size_config.dart';
import 'package:dashboard/Widgets/detailed_income_chart.dart';
import 'package:dashboard/Widgets/income_chart.dart';
import 'package:dashboard/Widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width > SizeConfig.desktopSize && SizeConfig.width < 1590
        ? const Expanded(
            child: Padding(
                padding: EdgeInsets.all(16), child: DetailedIncomeChart()))
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex: 1, child: IncomeChart()),
              SizedBox(
                width: 15,
              ),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
