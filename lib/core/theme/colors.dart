import 'package:flutter/material.dart';

abstract class AppColor {
  const AppColor({
    required this.primary,
    required this.successColor,
    required this.primaryDark,
    required this.text,
    required this.accentText,
    required this.icon,
    required this.tagOutline,
    required this.border,
    required this.selectedOption,
    required this.background,
    required this.cardBackGround,
    required this.errorColor,
    required this.textSecondary,
    required this.borderDark,
    required this.shimmerDark,
    required this.shimmerLight,
    required this.cardSecondary,
    required this.textDescription,
  });

  final Color primary;
  final Color primaryDark;
  final Color text;
  final Color accentText;
  final Color icon;
  final Color tagOutline;
  final Color border;
  final Color selectedOption;
  final Color background;
  final Color cardBackGround;
  final Color errorColor;
  final Color successColor;
  final Color textSecondary;
  final Color borderDark;
  final Color shimmerDark;
  final Color shimmerLight;
  final Color cardSecondary;
  final Color textDescription;
}

class AppColorLight implements AppColor {
  @override
  Color get primary => const Color.fromRGBO(140, 188, 252, 1);

  @override
  Color get primaryDark => const Color.fromRGBO(0, 0, 0, 1);

  @override
  Color get text => const Color.fromRGBO(26, 26, 26, 1);

  @override
  Color get icon => const Color.fromRGBO(112, 112, 112, 1);

  @override
  Color get tagOutline => const Color.fromRGBO(223, 223, 223, 1);

  @override
  Color get border => const Color.fromRGBO(213, 213, 213, 1);

  @override
  Color get selectedOption => const Color.fromRGBO(140, 188, 252, 1);

  @override
  Color get background => const Color.fromRGBO(250, 250, 250, 1);

  @override
  Color get cardBackGround => const Color.fromRGBO(255, 255, 255, 1);

  @override
  Color get errorColor => const Color.fromRGBO(216, 87, 87, 1);

  @override
  Color get textSecondary => const Color.fromRGBO(112, 112, 112, 1);

  @override
  Color get borderDark => const Color.fromRGBO(217, 217, 217, 1);

  @override
  Color get shimmerDark => const Color.fromRGBO(249, 250, 251, 0.7);

  @override
  Color get shimmerLight => const Color.fromRGBO(165, 165, 165, 0.4);

  @override
  Color get cardSecondary => const Color.fromRGBO(247, 247, 247, 1);

  @override
  Color get textDescription => const Color.fromRGBO(94, 94, 94, 1);

  @override
  Color get successColor => const Color.fromRGBO(57, 191, 153, 1);

  @override
  Color get accentText => const Color.fromRGBO(39, 123, 168, 1);
}

class AppColorDark implements AppColor {
  @override
  Color get primary => const Color.fromRGBO(131, 182, 249, 1);

  @override
  Color get primaryDark => const Color.fromRGBO(0, 65, 45, 1);

  @override
  Color get text => const Color.fromRGBO(255, 255, 255, 1);

  @override
  Color get icon => const Color.fromRGBO(187, 192, 199, 1);

  @override
  Color get tagOutline => const Color.fromRGBO(223, 223, 223, 1);

  @override
  Color get border => const Color.fromRGBO(55, 55, 55, 0.5);

  @override
  Color get selectedOption => const Color.fromRGBO(140, 189, 252, 1);

  @override
  Color get background => const Color.fromRGBO(18, 18, 18, 1);

  @override
  Color get cardBackGround => const Color.fromRGBO(255, 255, 255, 1);

  @override
  Color get errorColor => const Color.fromRGBO(221, 108, 108, 1);

  @override
  Color get textSecondary => const Color.fromRGBO(187, 192, 199, 1);

  @override
  Color get borderDark => const Color.fromRGBO(217, 217, 217, 1);

  @override
  Color get shimmerDark => const Color.fromRGBO(249, 250, 251, 0.7);

  @override
  Color get shimmerLight => const Color.fromRGBO(165, 165, 165, 0.4);

  @override
  Color get cardSecondary => const Color.fromRGBO(247, 247, 247, 1);

  @override
  Color get textDescription => const Color.fromRGBO(94, 94, 94, 1);

  @override
  Color get successColor => const Color.fromRGBO(57, 191, 153, 1);

  @override
  Color get accentText => const Color.fromRGBO(44, 138, 189, 1);
}
