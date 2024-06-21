import 'package:flutter/material.dart';

import 'custom/custom_theme.dart';

class CustomThemeData {
  static ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomTheme.colorScheme,
        fontFamily: 'Dongle',
        textTheme: CustomTheme.textTheme,
      );
}
