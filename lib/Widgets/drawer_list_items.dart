import 'package:dashboard/Models/drwer_items_model.dart';
import 'package:dashboard/Widgets/active_and_inactive_tile.dart';
import 'package:flutter/material.dart';


class DrawerListItems extends StatelessWidget {
  const DrawerListItems(
      {super.key, required this.drawerItemsModel, required this.isActive});
  final DrawerItemsModel drawerItemsModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive == true
        ? ActiveListTile(drawerItemsModel: drawerItemsModel)
        : InActiveListTile(drawerItemsModel: drawerItemsModel);
  }
}


