import 'package:dashboard/Models/user_info_model.dart';
import 'package:dashboard/Utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DarwerUserInfo extends StatelessWidget {
  const DarwerUserInfo({
    super.key,
    required this.userInfoModel,
  });
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              userInfoModel.title,
              style: AppStyle.styleSemiBold16(context),
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              userInfoModel.subtitle,
              style: AppStyle.styleRegular12(context),
            ),
          ),
          leading: SvgPicture.asset(userInfoModel.image),
        ),
      ),
    );
  }
}
