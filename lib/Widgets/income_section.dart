import 'package:dashboard/Widgets/Income_header.dart';
import 'package:dashboard/Widgets/custom_background_widget.dart';
import 'package:dashboard/Widgets/income_section_body.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
        child: Column(
      children: [
        IncomeHeader(),
        IncomeSectionBody()
      ],
    ));
  }
}

