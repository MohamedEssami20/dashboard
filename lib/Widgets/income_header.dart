import 'package:dashboard/Utils/app_style.dart';
import 'package:flutter/material.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  }); 

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          "Income",
          style: AppStyle.styleSemiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side:
                      const BorderSide(width: 1.3, color: Color(0xfff1f1f1)))),
          child: Row(
            children: [
               Text(
                "Monthly",
                style: AppStyle.styleMedium16(context),
              ),
              const SizedBox(
                width: 18,
              ),
              Transform.rotate(
                angle: -1.56940,
                child: const Icon(Icons.arrow_back_ios_new),
              )
            ],
          ),
        )
      ],
    );
  }
}
