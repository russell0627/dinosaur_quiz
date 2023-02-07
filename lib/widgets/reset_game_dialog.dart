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
            SizedBox(
              height: 1,
              child: Container(
                decoration: const BoxDecoration(color: Colors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: alertVerticalSpacerHeight,
                  width: 1,
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      child: const Text("Yes")),
                ),
                SizedBox(
                  height: alertVerticalSpacerHeight,
                  width: 1,
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: const Text("No")),
                ),
                SizedBox(
                  height: alertVerticalSpacerHeight,
                  width: 1,
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1,
              child: Container(
                decoration: const BoxDecoration(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

void showResetGameDialog(BuildContext context, VoidCallback resetFunction) async {
  final reset = await showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (_) => const ResetGameDialog(),
  );

  if (reset!) {
    resetFunction();
  }
}
