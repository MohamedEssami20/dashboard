import 'package:dashboard/Models/drwer_items_model.dart';
import 'package:dashboard/Utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveListTile extends StatelessWidget {
  const InActiveListTile({
    super.key,
    required this.drawerItemsModel,
  });

  final DrawerItemsModel drawerItemsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
        child: Text(
          drawerItemsModel.title,
          style: AppStyle.styleRegular16(context),
        ),
      ),
      leading: SvgPicture.asset(drawerItemsModel.icons),
    );
  }
}

class ActiveListTile extends StatelessWidget {
  const ActiveListTile({
    super.key,
    required this.drawerItemsModel,
  });

  final DrawerItemsModel drawerItemsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
        child: Text(
          drawerItemsModel.title,
          style: AppStyle.styleBold16(context),
        ),
      ),
      leading: SvgPicture.asset(drawerItemsModel.icons),
      trailing: Container(
        color: const Color(0xff4EB7F2),
        width: 3.30,
      ),
    );
  }
}