import 'package:dashboard/Utils/app_images.dart';
import 'package:dashboard/Utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 450 / 230,
      child: Container(
        decoration: ShapeDecoration(
            image: const DecorationImage(
                image: AssetImage(Assets.myCardBackground), fit: BoxFit.fill),
            color: const Color(0xff4EB7F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 32, right: 42, top: 15),
              title: Text(
                "Name card",
                style: AppStyle.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: AppStyle.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyle.styleSemiBold24(context)
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    "12/20 - 124",
                    style: AppStyle.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 54 - 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
