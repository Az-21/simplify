import 'package:flutter/material.dart';
import 'package:simplify/components/drawer/logic/page_list.dart';
import 'package:simplify/pages/about/page.dart';
import 'package:simplify/pages/home/page.dart';
import 'package:simplify/pages/settings/page.dart';
import 'package:simplify/pages/simplify/page.dart';

/// Return a new page based on the name of the navigation drawer item
StatelessWidget GeneratePageDestination({required PageList destination}) {
  switch (destination) {
    case PageList.Home:
      return const HomePage();
    case PageList.Simplify:
      return const SimplifyPage();
    case PageList.Settings:
      return const SettingsPage();
    case PageList.About:
      return const AboutPage();

    ///
    default:
      return const HomePage();
  }
}
