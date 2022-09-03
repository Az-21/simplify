import 'package:flutter/material.dart';

/// Constant fields
const String _title = "Uppercase";
const String _subtitle = "Change every letter to uppercase";

class UpperCaseOption extends StatefulWidget {
  const UpperCaseOption({Key? key}) : super(key: key);
  @override
  State<UpperCaseOption> createState() => _UpperCaseOptionState();
}

class _UpperCaseOptionState extends State<UpperCaseOption> {
  /// Field
  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.arrow_circle_up),
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
                const Text("March Comes in Like a Lion - E01"),
                const SizedBox(height: 32),
                //
                Text("• Sample Output", style: Theme.of(context).textTheme.labelLarge),
                const Text("MARCH COMES IN LIKE A LION - E01"),
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
