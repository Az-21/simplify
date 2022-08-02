import 'package:flutter/material.dart';
import 'package:simplify/pages/home/page.dart';
import 'package:simplify/resources/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simplify',
      theme: greenLightTheme,
      darkTheme: greenDarkTheme,
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}
