import 'package:creartify/core/theme/colors.dart';
import 'package:creartify/core/theme/units.dart';
import 'package:flutter/material.dart';

class ThemeDark {
  static final AppColor _colors = AppColorDark();

  static ThemeData dark = ThemeData(
    textTheme: textTheme,
    scaffoldBackgroundColor: _colors.primaryBackground,
    floatingActionButtonTheme: _floatingActionButtonTheme(),
    bottomAppBarTheme: _bottomAppBarTheme(),
  );

  static TextTheme textTheme = TextTheme(
    titleSmall: TextStyle(fontSize: 19, color: _colors.inactiveDark),
    labelSmall: TextStyle(fontSize: 17, color: _colors.inactiveLight),
    labelMedium: TextStyle(fontSize: 21, color: _colors.textBlack, fontWeight: FontWeight.bold),
  ).apply(fontFamily: 'TTNorms');

  static FloatingActionButtonThemeData _floatingActionButtonTheme() {
    return  FloatingActionButtonThemeData(
      shape: const CircleBorder(),
      focusElevation: 500,
      backgroundColor: _colors.activeDark,
      foregroundColor: _colors.primaryForeground,
    );
  }

  static BottomAppBarTheme _bottomAppBarTheme() {
    return BottomAppBarTheme(
      color: _colors.primaryForeground,
      elevation: 12.0,
      shape: const CircularNotchedRectangle(),
      height: kBottomAppBarHeight,
    );
  }

  static LinearGradient gradientColors(Color firstColor, Color secondColor) {
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: <Color>[firstColor, secondColor],
    );
  }
}
