import 'package:dashboard/Utils/app_style.dart';
import 'package:flutter/material.dart';
class OptinonsWidget extends StatelessWidget {
  const OptinonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xfff1f1f1)),
              borderRadius: BorderRadius.circular(12))),
      child: Row(
        children: [
          Text(
            "Monthly",
            style: AppStyle.styleMedium16(context),
          ),
          const SizedBox(
            width: 12,
          ),
          Transform.rotate(
              angle: -1.6,
              child: const Icon(
                Icons.arrow_back_ios_outlined,
                color: Color(0xFF064061),
              ))
        ],
      ),
    );
  }
}
