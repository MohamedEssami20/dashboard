import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
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
            value: 40,
            color: const Color(0xff208CC8),
            showTitle: false,
            radius: myindex == 0 ? 60 : 50,
          ),
          PieChartSectionData(
            value: 25,
            color: const Color(0xff4EB7F2),
            showTitle: false,
            radius: myindex == 1 ? 60 : 50,
          ),
          PieChartSectionData(
            value: 20,
            color: const Color(0xff064061),
            showTitle: false,
            radius: myindex == 2 ? 60 : 50,
          ),
          PieChartSectionData(
            value: 22,
            color: const Color(0xffE2DECD),
            showTitle: false,
            radius: myindex == 3 ? 60 : 50,
          ),
        ]);
  }
}
