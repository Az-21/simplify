import 'package:flutter/material.dart';

///
/* ----------------------- Remove non-ASCII characters ---------------------- */
/// Constant fields
const String _title = "Remove foreign characters";
const String _subtitle = "Remove non-ASCII (non-English) characters.";

class AsciiOnlyOption extends StatefulWidget {
  const AsciiOnlyOption({Key? key}) : super(key: key);
  @override
  State<AsciiOnlyOption> createState() => _AsciiOnlyOptionState();
}

class _AsciiOnlyOptionState extends State<AsciiOnlyOption> {
  /// Field
  bool isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.local_library),
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
                  const Text("Bakemonogatari 化物語 - E01"),
                  const SizedBox(height: 32),
                  //
                  Text("• Sample Output", style: Theme.of(context).textTheme.labelLarge),
                  const Text("Bakemonogatari - E01"),
                ],
              ),
            ),
            actions: [
              TextButton(onPressed: () {/*TODO*/}, child: const Text("Share Feedback")),
              OutlinedButton(onPressed: () => Navigator.pop(context), child: const Text("OK")),
            ],
          );
        });
  }
}
