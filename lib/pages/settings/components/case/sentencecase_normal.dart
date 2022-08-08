import 'package:flutter/material.dart';

/// Constant fields
const String _title = "Sentence case";
const String _subtitle = "Capitalize first letter of every word";

class SentenceCaseOption extends StatefulWidget {
  const SentenceCaseOption({Key? key}) : super(key: key);
  @override
  State<SentenceCaseOption> createState() => _SentenceCaseOptionState();
}

class _SentenceCaseOptionState extends State<SentenceCaseOption> {
  /// Field
  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.text_fields),
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
                const Text("Rezero In The Usa - S02E01"),
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
