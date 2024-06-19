import 'package:dashboard/Models/drwer_items_model.dart';
import 'package:dashboard/Models/user_info_model.dart';
import 'package:dashboard/Utils/app_images.dart';
import 'package:dashboard/Widgets/active_and_inactive_tile.dart';
import 'package:dashboard/Widgets/custom_listtile.dart';
import 'package:dashboard/Widgets/drawer_item_listview.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: DarwerUserInfo(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  title: "Lekan Okeowo",
                  subtitle: "demo@gmail.com"),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          const DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                    child: SizedBox(
                  height: 10,
                )),
                InActiveListTile(
                    drawerItemsModel: DrawerItemsModel(
                        title: "Settings", icons: Assets.imagesSettings)),
                InActiveListTile(
                    drawerItemsModel: DrawerItemsModel(
                        title: "Logout Account", icons: Assets.imagesLogout)),
                const SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
