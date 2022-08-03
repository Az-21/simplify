import 'package:flutter/material.dart';
import 'package:simplify/components/drawer/drawer.dart';
import 'package:simplify/components/drawer/logic/page_list.dart';
import 'package:simplify/pages/settings/components/case.dart';
import 'package:simplify/pages/settings/components/heading.dart';
import 'package:simplify/pages/settings/components/options.dart';

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
        children: const [
          /* ----------------------------- General options ---------------------------- */
          SettingHeader(heading: "General Options"),
          AsciiOnlySwitch(),

          /* ----------------------------- Case Modifiers ----------------------------- */
          SettingHeader(heading: "Case Setting"),
          SmartSentenceCaseSwitch(),
          HardSentenceCaseSwitch(),
          OptimizeArticlesSwitch(),
        ],
      ),
    );
  }
}
