import 'package:flutter/material.dart';

class Sizes {
  //Private constructor to get rid of the default constructor suggestion
  Sizes._();

  //------------------ EdgeInsets ------------------
  static const EdgeInsets pageMargins = EdgeInsets.symmetric(horizontal: 16, vertical: 16);
  static const EdgeInsets boxMargins = EdgeInsets.symmetric(horizontal: 8, vertical: 12);

  //------------------ Spacings ------------------

  static const double spacingSmall = 8;
  static const double spacingMedium = 12;
  static const double spacingBig = 16;
  static const double spacingLarge = 24;
  static const double spacingHuge = 36;

  //----------------- Icons ------------------

  static const double iconSmall = 30;
  static const double iconBig = 36;
  static const double iconLarge = 42;

  //---
  static const double borderRadius = 30;
}
