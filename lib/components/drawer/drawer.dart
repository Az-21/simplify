import 'package:flutter/material.dart';
import 'package:simplify/components/drawer/components/navigation_drawer_item.dart';
import 'package:simplify/components/drawer/logic/page_list.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key, required this.root}) : super(key: key);

  /* --------------------------------- Fields --------------------------------- */
  final PageList root; // Page which initialized the drawer

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        children: [
          NavigationDrawerItem(icon: Icons.home_rounded, page: PageList.Home, root: root),
          NavigationDrawerItem(icon: Icons.library_books_rounded, page: PageList.Simplify, root: root),
          NavigationDrawerItem(icon: Icons.settings_rounded, page: PageList.Settings, root: root),
          NavigationDrawerItem(icon: Icons.info_rounded, page: PageList.About, root: root),
        ],
      ),
    );
  }
}
