import 'package:flutter/material.dart';

///
/* ----------------------- Smart Sentence Case Switch ----------------------- */
///
class SmartSentenceCaseSwitch extends StatefulWidget {
  const SmartSentenceCaseSwitch({Key? key}) : super(key: key);
  @override
  State<SmartSentenceCaseSwitch> createState() => _SmartSentenceCaseSwitchState();
}

class _SmartSentenceCaseSwitchState extends State<SmartSentenceCaseSwitch> {
  /// Field
  bool isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.workspace_premium),
      title: const Text("Smart sentence case"),
      subtitle: const Text("Capitalize the first letter of every word while preserving words like reZero."),
      trailing: Switch(
        value: isEnabled,
        onChanged: (value) => setState(() {
          isEnabled = !isEnabled;
        }),
      ),
    );
  }
}

///
/* -------------------------- Sentence Case Switch -------------------------- */
///
class HardSentenceCaseSwitch extends StatefulWidget {
  const HardSentenceCaseSwitch({Key? key}) : super(key: key);
  @override
  State<HardSentenceCaseSwitch> createState() => _HardSentenceCaseSwitchState();
}

class _HardSentenceCaseSwitchState extends State<HardSentenceCaseSwitch> {
  /// Field
  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.abc),
      title: const Text("Hard sentence case"),
      subtitle: const Text("Capitalize the first letter of every word without preserving words like reZero."),
      trailing: Switch(
        value: isEnabled,
        onChanged: (value) => setState(() {
          isEnabled = !isEnabled;
        }),
      ),
    );
  }
}

///
/* ------------------------ Optimize articles switch ------------------------ */
///
class OptimizeArticlesSwitch extends StatefulWidget {
  const OptimizeArticlesSwitch({Key? key}) : super(key: key);
  @override
  State<OptimizeArticlesSwitch> createState() => _OptimizeArticlesSwitch();
}

class _OptimizeArticlesSwitch extends State<OptimizeArticlesSwitch> {
  /// Field
  bool isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.text_fields),
      title: const Text("Optimize articles"),
      subtitle: const Text("Convert the mid-sentence articles (a, an, the) to lowercase."),
      trailing: Switch(
        value: isEnabled,
        onChanged: (value) => setState(() {
          isEnabled = !isEnabled;
        }),
      ),
    );
  }
}
