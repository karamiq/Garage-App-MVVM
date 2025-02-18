import 'package:app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'extra_colors.dart';

class AppTheme {
  ThemeData _build(Brightness brightness) {
    final themeData = ThemeData(
        //  scaffoldBackgroundColor: Color(0xFFFFFCFA),
        useMaterial3: true,
        brightness: brightness,
        inputDecorationTheme: _buildInputDecorationTheme(brightness),
        colorScheme: _buildColorScheme(brightness),
        filledButtonTheme: _buildFilledButtonTheme(brightness),
        outlinedButtonTheme: _buildOutlinedButtonTheme(brightness),
        textButtonTheme: _buildTextButtonTheme(brightness),
        elevatedButtonTheme: _buildElevatedButtonTheme(brightness),
        datePickerTheme: _buildDatePickerTheme(brightness),
        //   fontFamily: GoogleFonts.cairo().fontFamily,
        // textTheme: _buildTextTheme(GoogleFonts.cairoTextTheme()),
        checkboxTheme: CheckboxThemeData(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          splashRadius: 0,
          fillColor: WidgetStateProperty.all(Colors.transparent),
          checkColor: WidgetStateProperty.all(Colors.white),
          visualDensity: VisualDensity.compact,
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          side: BorderSide(
            color: Colors.grey.shade400,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1000),
            side: BorderSide(
              color: Colors.grey.shade400,
              width: 1,
            ),
          ),
        ));
    return themeData.copyWith(
      textTheme: _buildTextTheme(themeData.textTheme),
    );
  }

  final borderRadius = BorderRadius.circular(BorderSize.exSmall);
  final padding = const EdgeInsets.symmetric(vertical: 16, horizontal: 14);

  Brightness getBrightness() {
    return currentBrightness.value;
  }

  final currentBrightness = ValueNotifier<Brightness>(Brightness.light);

  ThemeData buildDarkTheme() {
    currentBrightness.value = Brightness.dark;
    return _build(Brightness.dark);
  }

  ThemeData buildLightTheme() {
    currentBrightness.value = Brightness.light;
    return _build(Brightness.light);
  }

  TextTheme _buildTextTheme(TextTheme textTheme) {
    return GoogleFonts.cairoTextTheme(textTheme);
  }

  InputDecorationTheme _buildInputDecorationTheme(Brightness brightness) {
    final colorScheme = _buildColorScheme(brightness);

    OutlineInputBorder buildBorder(Color color, {double width = 1}) {
      return OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: BorderSide(color: color, width: width),
      );
    }

    return InputDecorationTheme(
      contentPadding: padding,
      fillColor: colorScheme.surfaceContainerHighest.withOpacity(0.5),
      filled: true,
      activeIndicatorBorder: BorderSide.none,
      border: buildBorder(colorScheme.outline.withOpacity(0.5)),
      errorBorder: buildBorder(colorScheme.error),
      enabledBorder: buildBorder(colorScheme.outline.withOpacity(0.5)),
      focusedBorder: buildBorder(colorScheme.primary),
      focusedErrorBorder: buildBorder(colorScheme.error, width: 2),
      disabledBorder: buildBorder(colorScheme.outline.withOpacity(0.5)),
    );
  }

  ExtraColors buildExtraColors() {
    return const ExtraColors(
      success: Color.fromARGB(255, 28, 101, 30),
      onSuccess: Colors.white,
      error: Color.fromARGB(255, 255, 0, 0),
    );
  }

  ColorScheme _buildColorScheme(Brightness brightness) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFFFFAE48),
      primary: const Color(0xFFFFAE48),
      //seedColor: const Color(0xFF0D233A),
      //primary: const Color(0xFF0D233A),
      //const Color(0xFFFFAE48),
      background: const Color.fromARGB(255, 227, 232, 250),
      brightness: brightness,
    );
    return colorScheme.copyWith(
      outline: colorScheme.outline.withOpacity(1),
    );
  }

  FilledButtonThemeData _buildFilledButtonTheme(Brightness brightness) {
    return FilledButtonThemeData(
      style: FilledButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }

  OutlinedButtonThemeData _buildOutlinedButtonTheme(Brightness brightness) {
    final colorScheme = ThemeData.light();
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        foregroundColor: colorScheme.hintColor.withAlpha(100),
      ),
    );
  }

  TextButtonThemeData _buildTextButtonTheme(Brightness brightness) {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }

  DatePickerThemeData _buildDatePickerTheme(Brightness) {
    final colorScheme = _buildColorScheme(Brightness);
    return DatePickerThemeData(
      //backgroundColor: Colors.white,
      shadowColor: Colors.transparent,
      rangePickerHeaderBackgroundColor: Colors.transparent,
      rangeSelectionBackgroundColor: Colors.transparent,
      inputDecorationTheme: InputDecorationTheme(
        focusColor: Colors.red,
        filled: true,
        fillColor: Colors.transparent,
      ),
      headerBackgroundColor: Colors.transparent,
      rangePickerBackgroundColor: Colors.transparent,
      dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
        if ((states.contains(WidgetState.selected))) {
          return colorScheme.primary;
        }
        return null;
      }),
      dayForegroundColor: WidgetStateProperty.resolveWith((states) {
        if ((states.contains(WidgetState.selected))) {
          return colorScheme.surface;
        }
        return null;
      }),
      dayOverlayColor: WidgetStateProperty.all(Colors.orange),
    );
  }

  ElevatedButtonThemeData _buildElevatedButtonTheme(Brightness brightness) {
    final colorScheme =
        _buildColorScheme(brightness); // Assuming you have a _buildColorScheme function

    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: colorScheme.primary, // Use primary color from color scheme
        foregroundColor: Colors.white, // White text color for foreground
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}

final colorSchemeNotifier = ValueNotifier<ColorScheme>(ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 17, 61, 128),
  brightness: AppTheme().getBrightness(),
));
