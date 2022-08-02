import 'package:flutter/material.dart';
import 'package:simplify/components/drawer/drawer.dart';
import 'package:simplify/components/drawer/logic/page_list.dart';

class SimplifyPage extends StatelessWidget {
  const SimplifyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* ---------------------------------- Style --------------------------------- */
      appBar: AppBar(title: const Text("Simplify")),
      drawer: const NavigationDrawer(root: PageList.Simplify),

      /* --------------------------------- Content -------------------------------- */
    );
  }
}
