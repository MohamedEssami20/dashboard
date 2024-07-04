import 'package:dashboard/Utils/app_style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int myindex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(pieChartData()));
  }

  PieChartData pieChartData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, touchResponse) {
            setState(() {
              myindex =
                  touchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            });
          },
        ),
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: myindex == 0 ? 1.4 : null,
            title: myindex == 0 ? 'Design service' : '40%',
            titleStyle: AppStyle.styleMedium16(context)
                .copyWith(color: myindex == 0 ? null : Colors.white),
            value: 40,
            color: const Color(0xff208CC8),
            radius: myindex == 0 ? 60 : 50,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: myindex == 1 ? 1.8 : null,
            title: myindex == 1 ? 'Design product' : '25%',
            titleStyle: AppStyle.styleMedium16(context)
                .copyWith(color: myindex == 1 ? null : Colors.white),
            value: 25,
            color: const Color(0xff4EB7F2),
            radius: myindex == 1 ? 60 : 50,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: myindex == 2 ? 1.4 : null,
            title: myindex == 2 ? 'Product royalti' : '20%',
            titleStyle: AppStyle.styleMedium16(context)
                .copyWith(color: myindex == 2 ? null : Colors.white),
            value: 20,
            color: const Color(0xff064061),
            radius: myindex == 2 ? 60 : 50,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: myindex == 3 ? 1.4 : null,
            title: myindex == 3 ? 'others' : '22%',
            titleStyle: AppStyle.styleMedium16(context)
                .copyWith(color: myindex == 3 ? null : Colors.white),
            value: 22,
            color: const Color(0xffE2DECD),
            radius: myindex == 3 ? 60 : 50,
          ),
        ]);
  }
}
