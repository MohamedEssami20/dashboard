import 'dart:developer';

import 'package:dashboard/Utils/size_config.dart';
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      log("myWidth: ${constrains.maxWidth.toString()}");
      if (constrains.maxWidth < SizeConfig.tabletsize) {
        return mobileLayout(context);
      } else if (constrains.maxWidth < SizeConfig.desktopSize) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
