import 'package:flutter/material.dart';

extension ColorExtensions on Color {

  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString';
    }
    return Color(int.parse(hexColorString, radix: 16));
  }

  static Color fromRGB(int r, int g, int b) {
    return Color.fromARGB(255, r, g, b);
  }

  static Color fromARGB(int a, int r, int g, int b) {
    return Color.fromARGB(a, r, g, b);
  }
}

class AppColors {
  static Color deepBlack = ColorExtensions.fromHex("#262626");
  static const Color normalBlack = Color(0xFF262626);
  static const Color yellow = Color(0xFFFF9900);
  static const Color grey = Color(0xFF999999);
  static const Color white = Color(0xFFFFFFFF);
  static const Color fadedWhite = Color(0xFF8A8A8A);

  static const Color transparent = Color(0x14232323);
}