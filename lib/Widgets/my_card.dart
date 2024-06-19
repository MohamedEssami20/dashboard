import 'package:dashboard/Utils/app_images.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 450 / 215,
      child: Container(
        decoration: ShapeDecoration(
            image: const DecorationImage(image: AssetImage(Assets.myCardBackground)),
            color: const Color(0xff4EB7F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
      ),
    );
  }
}
