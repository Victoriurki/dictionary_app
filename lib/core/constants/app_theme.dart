import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColorTheme {
  static Color homePageBackgroundColor = const Color(0xFFB98013);
  static Color landingPageBackgroundColor = const Color(0xFF541B1D);
  static Color definitionPageBackgroundColor = const Color(0xFF496E2D);
  static Color titleColor = const Color(0xFFC33C1E);
  static Color textColor = const Color(0xFF070608);
}

class AppFontTheme {
  static final titleFont = GoogleFonts.robotoSerif().fontFamily;
  static final textFont = GoogleFonts.robotoSerif().fontFamily;
}

class AppThemeData {
  ThemeData textTheme = ThemeData(
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 64,
        color: AppColorTheme.textColor,
        fontFamily: AppFontTheme.textFont,
      ),
      titleMedium: TextStyle(
        fontSize: 36,
        color: AppColorTheme.textColor,
        fontFamily: AppFontTheme.textFont,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        color: AppColorTheme.textColor,
        fontFamily: AppFontTheme.textFont,
      ),
    ),
  );
  ThemeData titleTheme = ThemeData(
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 120,
        color: AppColorTheme.titleColor,
        fontFamily: AppFontTheme.titleFont,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        color: AppColorTheme.titleColor,
        fontFamily: AppFontTheme.titleFont,
      ),
    ),
  );
}
