import 'package:dashboard/Models/income_deatail_model.dart';
import 'package:dashboard/Utils/app_style.dart';
import 'package:flutter/material.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({
    super.key,
    required this.incomeDeatailModel,
  });

  final IncomeDeatailModel incomeDeatailModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
      contentPadding: const EdgeInsets.only(left: 0, bottom: 0),
      titleAlignment: ListTileTitleAlignment.threeLine,
      visualDensity: VisualDensity.comfortable,
      leading: FittedBox(
        fit: BoxFit.scaleDown,
        child: Container(
          width: 12,
          height: 12,
          decoration: ShapeDecoration(
            color: incomeDeatailModel.mycolor,
            shape: const OvalBorder(),
          ),
        ),
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          incomeDeatailModel.title,
          style: AppStyle.styleRegular16(context),
        ),
      ),
      trailing: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          incomeDeatailModel.value,
          style: AppStyle.styleMedium16(context)
              .copyWith(color: const Color(0xff208CC8)),
        ),
      ),
    );
  }
}
