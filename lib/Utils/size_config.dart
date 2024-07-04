import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktopSize = 1200;
  static const double tabletsize = 800;

  static late double width, height;

  static init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
