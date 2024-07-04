import 'package:dashboard/Utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle:
            AppStyle.styleRegular16(context).copyWith(color: const Color(0xffAAAAAA)),
        hintText: hint,
        filled: true,
        fillColor: const Color(0xffFAFAFA),
        border: borderBuider(),
        enabledBorder: borderBuider(),
        focusedBorder: borderBuider(),
      ),
    );
  }

  OutlineInputBorder borderBuider() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffFAFAFA)),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
