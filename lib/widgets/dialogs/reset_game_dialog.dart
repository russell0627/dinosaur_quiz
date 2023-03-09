import 'package:flutter/material.dart';

const double alertVerticalSpacerHeight = 30;

class ResetGameDialog extends StatelessWidget {
  const ResetGameDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Do you want to reset your Game?"),
      actions: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      child: const Text("Yes")),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: const Text("No")),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

Future<bool> showResetGameDialog(
  BuildContext context,
) async {
  final reset = await showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (_) => const ResetGameDialog(),
  );

  return reset ?? false;
}
