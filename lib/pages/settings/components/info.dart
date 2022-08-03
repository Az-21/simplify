import 'package:flutter/material.dart';

class LongPressInfoCard extends StatelessWidget {
  const LongPressInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 12,
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: ListTile(
        leading: Icon(Icons.info),
        trailing: Icon(Icons.touch_app),
        title: Text("Long Press Action"),
        subtitle: Text("Long press setting options to get more information about them."),
      ),
    );
  }
}
