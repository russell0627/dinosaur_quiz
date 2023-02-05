import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'theme_state.dart';

part 'theme_service.g.dart';

// color palette (examples)
const backgroundColor = Colors.black;
const primaryColor = Colors.blue;
const primaryVariant = Colors.lightBlue;

@riverpod
class ThemeService extends _$ThemeService {
  static const colorScheme = FlexScheme.money;

  FlexSchemeData get schemeData => FlexColor.schemes[colorScheme]!;

  @override
  ThemeState build() {
    return ThemeState(
      light: FlexThemeData.light(scheme: colorScheme),
      dark: FlexThemeData.dark(scheme: colorScheme),
    );
  }

  /// Use this to customize the color scheme (current code is an example).
  ThemeData _modTheme(ThemeData data) {
    final textTheme = _buildTextTheme(data.textTheme);

    return data.copyWith(
      textTheme: textTheme,
    );
  }

  /// Use this to customize the text theme (current code is an example).
  TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      displayLarge: const TextStyle(
        color: primaryColor,
        fontSize: 26,
        fontFamily: 'HeavyMetal2',
      ),
      displayMedium: const TextStyle(
        color: primaryColor,
        fontSize: 24,
        fontFamily: 'HeavyMetal2',
      ),
      displaySmall: const TextStyle(
        color: primaryColor,
        fontSize: 22,
        fontFamily: 'HeavyMetal2',
      ),
      headlineLarge: const TextStyle(
        color: primaryVariant,
        fontSize: 21,
        fontFamily: 'Digital7',
      ),
      headlineMedium: const TextStyle(
        color: primaryVariant,
        fontSize: 20,
        fontFamily: 'Digital7',
      ),
      headlineSmall: const TextStyle(
        color: primaryColor,
        fontSize: 18,
        fontFamily: 'HeavyMetal2',
      ),
      titleLarge: const TextStyle(
        color: primaryColor,
        fontSize: 16,
        fontFamily: 'HeavyMetal2',
      ),
      titleMedium: const TextStyle(
        // TextField default
        color: primaryVariant,
        fontSize: 14,
        fontFamily: 'HeavyMetal2',
      ),
      titleSmall: const TextStyle(
        color: primaryColor,
        fontSize: 12,
        fontFamily: 'HeavyMetal2',
      ),
      bodyLarge: const TextStyle(
        color: primaryVariant,
        fontSize: 12,
        fontFamily: 'FiraCodeMed',
      ),
      bodyMedium: const TextStyle(
        // Text default
        color: primaryVariant,
        fontSize: 12,
        fontFamily: 'FiraCodeLight',
      ),
      bodySmall: const TextStyle(
        color: primaryVariant,
        fontSize: 10,
        fontFamily: 'HeavyMetal5',
      ),
    );
  }

  void onModeChange(ThemeMode value) {
    state = state.copyWith(mode: value);
  }
}
