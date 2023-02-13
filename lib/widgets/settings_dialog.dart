import 'package:dinosaur_quiz/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/theme/theme_service.dart';

const optionTextStyle = TextStyle(fontFamily: "DinoSauce");

class SettingsDialog extends ConsumerStatefulWidget {
  const SettingsDialog({Key? key}) : super(key: key);

  @override
  ConsumerState<SettingsDialog> createState() => _SettingsDialogState();
}

class _SettingsDialogState extends ConsumerState<SettingsDialog> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return SimpleDialog(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Settings",
                style: optionTextStyle,
              ),
            ),
            TextButton(
              onPressed: () => ref.read(themeServiceProvider.notifier).onModeChange(ThemeMode.system),
              child: const Text(
                "System",
                style: optionTextStyle,
              ),
            ),
            TextButton(
              onPressed: () => ref.read(themeServiceProvider.notifier).onModeChange(ThemeMode.light),
              child: const Text(
                "Light",
                style: optionTextStyle,
              ),
            ),
            TextButton(
              onPressed: () => ref.read(themeServiceProvider.notifier).onModeChange(ThemeMode.dark),
              child: const Text(
                "Dark",
                style: optionTextStyle,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Close"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
