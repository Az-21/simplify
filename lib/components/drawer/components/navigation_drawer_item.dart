import 'package:flutter/material.dart';
import 'package:simplify/components/drawer/logic/page_list.dart';
import 'package:simplify/components/drawer/logic/route.dart';

/// Stylized navigation drawer item based on M3
class NavigationDrawerItem extends StatelessWidget {
  const NavigationDrawerItem({Key? key, required this.icon, required this.page, required this.root}) : super(key: key);
  /* --------------------------------- Fields --------------------------------- */
  final IconData icon;
  final PageList page;
  final PageList root; // Page which initialized the drawer

  @override
  Widget build(BuildContext context) {
    return Card(
      /* ---------------------------------- Style --------------------------------- */
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
      color: page == root ? Theme.of(context).colorScheme.secondaryContainer : Theme.of(context).colorScheme.background,

      /* --------------------------------- Content -------------------------------- */
      child: ListTile(
        leading: Icon(icon),
        title: Text(page.name),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GeneratePageDestination(destination: page))),
      ),
    );
  }
}
