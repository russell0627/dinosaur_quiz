import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/theme/theme_service.dart';

class SettingsDialog extends ConsumerWidget {
  const SettingsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SimpleDialog(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Settings"),
            ),
            TextButton(
              onPressed: () => ref.read(themeServiceProvider.notifier).onModeChange(ThemeMode.system),
              child: const Text("System"),
            ),
            TextButton(
              onPressed: () => ref.read(themeServiceProvider.notifier).onModeChange(ThemeMode.light),
              child: const Text("Light"),
            ),
            TextButton(
              onPressed: () => ref.read(themeServiceProvider.notifier).onModeChange(ThemeMode.dark),
              child: const Text("Dark"),
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
