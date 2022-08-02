import 'package:flutter/material.dart';
import 'package:simplify/components/drawer/drawer.dart';
import 'package:simplify/components/drawer/logic/page_list.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* ---------------------------------- Style --------------------------------- */
      appBar: AppBar(title: const Text("About")),
      drawer: const NavigationDrawer(root: PageList.About),

      /* --------------------------------- Content -------------------------------- */
    );
  }
}
