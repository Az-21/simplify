import 'package:flutter/material.dart';
import 'package:simplify/components/drawer/drawer.dart';
import 'package:simplify/components/drawer/logic/page_list.dart';
import 'package:simplify/pages/settings/components/case.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* ---------------------------------- Style --------------------------------- */
      appBar: AppBar(title: const Text("Settings")),
      drawer: const NavigationDrawer(root: PageList.Settings),

      /* --------------------------------- Content -------------------------------- */
      body: ListView(
        children: [
          /* ----------------------------- Case Modifiers ----------------------------- */
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 32),
            child: Text("Case Modifiers", style: Theme.of(context).textTheme.headlineSmall),
          ),
          const SmartSentenceCaseSwitch(),
          const HardSentenceCaseSwitch(),
          const OptimizeArticlesSwitch(),
        ],
      ),
    );
  }
}
