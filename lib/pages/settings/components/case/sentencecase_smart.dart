import 'package:flutter/material.dart';

/// Constant fields
const String _title = "Smart sentence case";
const String _subtitle = "Capitalize first letter of every word while preserving words like reZero and USA";

class SmartSentenceCaseOption extends StatefulWidget {
  const SmartSentenceCaseOption({Key? key}) : super(key: key);
  @override
  State<SmartSentenceCaseOption> createState() => _SmartSentenceCaseOptionState();
}

class _SmartSentenceCaseOptionState extends State<SmartSentenceCaseOption> {
  /// Field
  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.workspace_premium),
      title: const Text(_title),
      subtitle: const Text(_subtitle),
      onLongPress: () => _MoreInfoPopup(context),
      trailing: Switch(
        value: isEnabled,
        onChanged: (value) => setState(() {
          isEnabled = !isEnabled;
        }),
      ),
    );
  }

/* ----------------------------- More info popup ---------------------------- */
  void _MoreInfoPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(_title),
          content: SizedBox(
            width: (2 / 3) * MediaQuery.of(context).size.width,
            height: (1 / 3) * MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                Text("• Description", style: Theme.of(context).textTheme.labelLarge),
                const Text(_subtitle),
                const SizedBox(height: 32),
                //
                Text("• Sample Input", style: Theme.of(context).textTheme.labelLarge),
                const Text("reZero in the USA - S02E01"),
                const SizedBox(height: 32),
                //
                Text("• Sample Output", style: Theme.of(context).textTheme.labelLarge),
                const Text("reZero In The USA - S02E01"),
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: () {/*TODO*/}, child: const Text("Share Feedback")),
            OutlinedButton(onPressed: () => Navigator.pop(context), child: const Text("OK")),
          ],
        );
      },
    );
  }
}
