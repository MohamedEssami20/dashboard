import 'package:dashboard/Utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.buttonColor, this.textcolor, required this.title});
  final Color? buttonColor, textcolor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0.0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            backgroundColor: buttonColor ?? const Color(0xff4EB7F2)),
        onPressed: () {},
        child:  Text(
          title,
          style: AppStyle.styleSemiBold18(context).copyWith(
            color: textcolor,
          ),
        ),
      ),
    );
  }
}
