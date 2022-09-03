import 'package:flutter/material.dart';
import 'package:simplify/components/drawer/drawer.dart';
import 'package:simplify/components/drawer/logic/page_list.dart';
import 'package:simplify/pages/settings/components/case/lowercase.dart';
import 'package:simplify/pages/settings/components/case/sentencecase_normal.dart';
import 'package:simplify/pages/settings/components/case/sentencecase_smart.dart';
import 'package:simplify/pages/settings/components/case/titlecase_normal.dart';
import 'package:simplify/pages/settings/components/case/titlecase_smart.dart';
import 'package:simplify/pages/settings/components/case/uppercase.dart';
import 'package:simplify/pages/settings/components/cleanup/curved_brackets.dart';
import 'package:simplify/pages/settings/components/cleanup/square_brackets.dart';
import 'package:simplify/pages/settings/components/heading.dart';
import 'package:simplify/pages/settings/components/info.dart';
import 'package:simplify/pages/settings/components/general/ascii.dart';

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
          LongPressInfoCard(),

          /* ----------------------------- General options ---------------------------- */
          SettingHeader(heading: "General Options"),
          AsciiOnlyOption(),

          /* ----------------------------- Case Modifiers ----------------------------- */
          SettingHeader(heading: "Case Setting"),
          TitleCaseOption(),
          SmartTitleCaseOption(),
          SentenceCaseOption(),
          SmartSentenceCaseOption(),
          LowerCaseOption(),
          UpperCaseOption(),

          /* ----------------------------- Cleanup Options ---------------------------- */
          SettingHeader(heading: "Cleanup Setting"),
          CurvedBracketOption(),
          SquareBracketOption(),
        ],
      ),
    );
  }
}
