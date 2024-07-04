import 'package:dashboard/Utils/size_config.dart';
import 'package:dashboard/Widgets/adaptive_dashboard.dart';
import 'package:dashboard/Widgets/custom_drawer.dart';
import 'package:dashboard/Widgets/dashboard_mobile_layout.dart';
import 'package:dashboard/Widgets/dashboard_tablet_layout.dart';
import 'package:dashboard/Widgets/desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> myKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    print("height: ${SizeConfig.height}, width: ${SizeConfig.width}");
    return Scaffold(
      key: myKey,
      drawer: const CustomDrawer(),
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tabletsize
          ? AppBar(
              backgroundColor: Colors.lightBlue.shade500.withOpacity(0.4),
              leading: IconButton(
                onPressed: () {
                  myKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            )
          : null,
      backgroundColor: const Color(0xfff7f9fa),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
