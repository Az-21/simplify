import 'package:flutter/material.dart';

class SettingHeader extends StatelessWidget {
  const SettingHeader({Key? key, required this.heading}) : super(key: key);

  /// Fields
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 32),
      child: Text(heading, style: Theme.of(context).textTheme.headlineSmall),
    );
  }
}
