import 'package:flutter/material.dart';
import 'package:news_app/core/config/theme/palette.dart';

final colorScheme = ColorScheme.fromSeed(
  seedColor: Palette.seedColor,
  brightness: Brightness.dark,
  //background: Palette.white,
);

ThemeData get appTheme => ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
    );
