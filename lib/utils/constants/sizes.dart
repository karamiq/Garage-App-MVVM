import 'package:flutter/material.dart';

class IconSize {
  const IconSize._();

  static const double extraSmall = 8.0;
  static const double small = 16.0;
  static const double medium = 24.0;
  static const double large = 32.0;
  static const double extraLarge = 48.0;
}

class BorderSize {
  const BorderSize._();

  static const double none = 0;
  static const double xxs = 4.0;
  static const double exSmall = 8.0;
  static const double small = 16.0;
  static const double medium = 24.0;
  static const double large = 32.0;
  static const double extraLarge = 48.0;
  static const double full = 100.0;

  static const BorderRadius noneRadius = BorderRadius.all(Radius.circular(none));
  static const BorderRadius xxsRadius = BorderRadius.all(Radius.circular(xxs));
  static const BorderRadius extraSmallRadius = BorderRadius.all(Radius.circular(exSmall));
  static const BorderRadius smallRadius = BorderRadius.all(Radius.circular(small));
  static const BorderRadius mediumRadius = BorderRadius.all(Radius.circular(medium));
  static const BorderRadius largeRadius = BorderRadius.all(Radius.circular(large));
  static const BorderRadius extraLargeRadius =
      BorderRadius.all(Radius.circular(extraLarge));
  static const BorderRadius fullRadius = BorderRadius.all(Radius.circular(full));
}

class Insets {
  const Insets._();

  static const double none = 0.0;
  static const double exSmall = 4.0;
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 24.0;
  static const double exLarge = 32.0;

  static const EdgeInsets noneAll = EdgeInsets.all(none);
  static const EdgeInsets extraSmallAll = EdgeInsets.all(exSmall);
  static const EdgeInsets smallAll = EdgeInsets.all(small);
  static const EdgeInsets mediumAll = EdgeInsets.all(medium);
  static const EdgeInsets largeAll = EdgeInsets.all(large);
  static const EdgeInsets extraLargeAll = EdgeInsets.all(exLarge);
}

class BorderWidth {
  const BorderWidth._();

  static const double none = 0.0;
  static const double extraSmall = 1.0;
  static const double small = 2.0;
  static const double medium = 4.0;
  static const double large = 8.0;
  static const double extraLarge = 16.0;
}

class Time {
  const Time._();

  static const Duration none = Duration.zero;
  static const Duration extraSmall = Duration(milliseconds: 100);
  static const Duration small = Duration(milliseconds: 300);
  static const Duration medium = Duration(milliseconds: 500);
  static const Duration large = Duration(milliseconds: 700);
  static const Duration extraLarge = Duration(seconds: 1);
}

class CustomPageTheme {
  static const double veryBigpadding = 28;
  static const double bigPadding = 24;
  static const double meduimPadding = 20;
  static const double normalPadding = 16;
  static const double smallPadding = 8;
}

class CustomFontsTheme {
  static const bigWeight = FontWeight.w700;
  static const mediumWeight = FontWeight.w500;
  static const double veryBigSize = 32;
  static const double bigSize = 24;
  static const normalWeight = FontWeight.w400;
  static const double mediumSize = 16;
  static const double normalSize = 14;
  static const double smallSize = 12;
  static const double verySmallSize = 10;
}

class CustomBorderTheme {
  static const double normalBorderRadius = 12;
  static const double borderWidth = 2;
}

class CustomColorsTheme {
  static const Color lightHeadLineColor = Color.fromARGB(255, 231, 240, 245);
  static const Color availableRadioColor = Color.fromARGB(255, 21, 102, 101);
  static const Color unAvailableRadioColor = Color.fromARGB(255, 186, 26, 26);
  static const Color headLineColor = Color.fromARGB(255, 0, 101, 132);
  static const Color descriptionColor = Color.fromARGB(255, 112, 120, 125);
  static const Color scaffoldBackGroundColor = Color.fromARGB(255, 251, 252, 254);
  static const Color dividerColor = Color.fromARGB(255, 236, 235, 235);
  static const Color buttonColor = Color.fromARGB(255, 191, 216, 225);
  static const Color starColor = Color.fromARGB(255, 240, 128, 16);
  static const Color handColor = Color.fromARGB(255, 213, 215, 221);
  static const Color calenderTextColor = Color.fromARGB(255, 160, 160, 160);
  static const Color rangeHighlightColor = Color.fromARGB(255, 208, 227, 232);
}
