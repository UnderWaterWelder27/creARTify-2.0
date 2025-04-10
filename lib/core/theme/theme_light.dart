import 'package:creartify/core/theme/colors.dart';
import 'package:creartify/generated/fonts.gen.dart';
import 'package:flutter/material.dart';

class ThemeLight {
  static final AppColor _colors = AppColorLight();

  static ThemeData light = ThemeData(
    textTheme: _textTheme(),
    outlinedButtonTheme: _outLinedButtonTheme(),
    inputDecorationTheme: _inputDecorationTheme(),
    scaffoldBackgroundColor: _colors.background,
    dividerColor: _colors.border,
    bottomNavigationBarTheme: _bottomNavigationBarTheme(),
    cardTheme: _cardTheme(),
    dividerTheme: _dividerTheme(),
  );

  static DividerThemeData _dividerTheme() {
    return  DividerThemeData(
      color: _colors.border,
      indent: 0,
      endIndent: 0,
      thickness: 1,
    );
  }

  static CardTheme _cardTheme() {
    return const CardTheme(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: Colors.transparent,
    );
  }

  static BottomNavigationBarThemeData _bottomNavigationBarTheme() {
    return BottomNavigationBarThemeData(
      selectedItemColor: _colors.primary,
      unselectedItemColor: _colors.tagOutline,
      backgroundColor: Colors.white,
      elevation: 6,
    );
  }

  static OutlinedButtonThemeData _outLinedButtonTheme() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: _colors.primary,
        disabledBackgroundColor: _colors.primary.withOpacity(0.38),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        side: const BorderSide(color: Colors.transparent),
        textStyle: const TextStyle(
          fontSize: 18,
          fontFamily: FontFamily.centuryGothicPaneuropean,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }

  static TextTheme _textTheme() {
    return TextTheme(
      displayLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: _colors.text,
      ),
      displayMedium: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w900,
        color: _colors.text,
      ),
      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: _colors.text,
      ),
      headlineMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: _colors.text,
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: _colors.text,
      ),
      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: _colors.text,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: _colors.text,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: _colors.text,
      ),
      bodyLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: _colors.text,
      ),
      bodyMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: _colors.text,
      ),
      bodySmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: _colors.text,
    ),
    ).apply(fontFamily: FontFamily.centuryGothicPaneuropean);
  }

  static InputDecorationTheme _inputDecorationTheme() {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: _colors.border,
      ),
    );
    return InputDecorationTheme(
      hintStyle: TextStyle(
        fontSize: 14,
        fontFamily: FontFamily.centuryGothicPaneuropean,
        fontWeight: FontWeight.w400,
        color: _colors.textSecondary,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      outlineBorder: null,
      activeIndicatorBorder: null,
      border: border,
      enabledBorder: border,
      disabledBorder: border,
      focusedBorder: border,
      errorBorder: border,
    );
  }
}
