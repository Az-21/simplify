import 'package:flutter/material.dart';
import 'package:simplify/components/drawer/logic/page_list.dart';
import 'package:simplify/pages/home/home_page.dart';

/// Return a new page based on the name of the navigation drawer item
StatelessWidget GeneratePageDestination({required PageList destination}) {
  switch (destination) {
    case PageList.Home:
      return const HomePage();
    default:
      return const HomePage();
  }
}
