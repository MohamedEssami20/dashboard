import 'package:dashboard/Models/user_info_model.dart';
import 'package:dashboard/Utils/app_images.dart';
import 'package:dashboard/Widgets/custom_listtile.dart';
import 'package:flutter/material.dart';

class LatestTarnsactionListview extends StatelessWidget {
  const LatestTarnsactionListview({super.key});

  static const List<UserInfoModel> items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail"),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: "Josua Nunito",
        subtitle: "Josh Nunito@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(
                  child: DarwerUserInfo(userInfoModel: e),
                ))
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 100,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //           child: DarwerUserInfo(
    //             userInfoModel: items[index],
    //           ),
    //         );
    //       }),
    // );
  }
}
