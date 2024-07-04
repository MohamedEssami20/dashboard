import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive == true ? 32 : 8,
      height: 8,
      duration: const Duration(microseconds: 120),
      decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: isActive == true
              ? const Color(0xff4db7f2)
              : const Color.fromARGB(255, 211, 211, 211)),
    );
  }
}
