import 'package:flutter/material.dart';

/// Constant fields
const String _title = "Curved bracket cleanup";
const String _subtitle = "Remove text inside curved brackets ( )";

class CurvedBracketOption extends StatefulWidget {
  const CurvedBracketOption({Key? key}) : super(key: key);
  @override
  State<CurvedBracketOption> createState() => _CurvedBracketOptionState();
}

class _CurvedBracketOptionState extends State<CurvedBracketOption> {
  /// Field
  bool isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.description),
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
                const Text("Land of the Lustrous (Houseki no Kuni) - E01 (HEVC x256)"),
                const SizedBox(height: 32),
                //
                Text("• Sample Output", style: Theme.of(context).textTheme.labelLarge),
                const Text("Land of the Lustrous - E01"),
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
