import 'package:flutter/material.dart';
import 'package:news_app/core/config/theme/palette.dart';

class Styles {
  Styles._();

  static const TextStyle title = TextStyle(
    fontSize: 14,
    color: Palette.seedColor,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle description = TextStyle(
    fontSize: 12,
    color: Palette.seedColor,
  );

  static const TextStyle dateTime = TextStyle(
    fontSize: 12,
    color: Palette.grey,
  );
}
