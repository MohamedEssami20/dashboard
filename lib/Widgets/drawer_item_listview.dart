import 'package:dashboard/Models/drwer_items_model.dart';
import 'package:dashboard/Utils/app_images.dart';
import 'package:dashboard/Widgets/drawer_list_items.dart';
import 'package:flutter/material.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemsModel> myItems = [
    DrawerItemsModel(title: "Dashboard", icons: Assets.imagesDashboard),
    DrawerItemsModel(
        title: "My Transaction", icons: Assets.imagesMyTransctions),
    DrawerItemsModel(title: "Statistics", icons: Assets.imagesStatistics),
    DrawerItemsModel(
        title: "Wallet Account", icons: Assets.imagesWalletAccount),
    DrawerItemsModel(
        title: "My Investments", icons: Assets.imagesMyInvestments),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: myItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: DrawerListItems(
                drawerItemsModel: myItems[index],
                isActive: activeIndex == index ? true : false,
              ),
            ),
          );
        });
  }
}
