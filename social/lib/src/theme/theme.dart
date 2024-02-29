import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeLight(context) {
  var baseTheme = ThemeData(brightness: Brightness.light);

  return ThemeData(
    useMaterial3: true,
    textTheme: GoogleFonts.interTextTheme(baseTheme.textTheme).copyWith(
      titleLarge: GoogleFonts.inter(
          textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w800,
        color: Colors.white,
      )),
      titleMedium: GoogleFonts.inter(
          textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      )),
      titleSmall: GoogleFonts.inter(
          textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      )),
      bodyLarge: GoogleFonts.inter(
          textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      )),
      bodyMedium: GoogleFonts.inter(
          textStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      )),
      bodySmall: GoogleFonts.inter(
          textStyle: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      )),
    ),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Color.fromRGBO(34, 40, 42, 1),
      ),
      centerTitle: true,
      elevation: 0,
    ),
    hoverColor: const Color.fromRGBO(255, 168, 170, 0.3),
    colorScheme: const ColorScheme(
      primary: Color.fromRGBO(223, 0, 253, 1),
      onPrimary: Color.fromRGBO(127, 0, 255, 1),
      // onPrimaryContainer: Color.fromRGBO(226, 244, 253, 1),
      secondary: Color.fromRGBO(255, 143, 145, 1),
      onSecondary: Color.fromRGBO(255, 192, 194, 1),
      // onSecondaryContainer: Color.fromRGBO(255, 242, 242, 1),
      tertiary: Color.fromRGBO(249, 223, 129, 1),
      onTertiary: Color.fromRGBO(252, 237, 184, 1),
      onTertiaryContainer: Color.fromRGBO(254, 251, 240, 1),
      // primary: Color.fromRGBO(0, 190, 239, 1),
      // onPrimary: Color.fromRGBO(223, 249, 255, 1),
      // onPrimaryContainer: Color.fromRGBO(223, 249, 255, 1),
      primaryContainer: Color.fromRGBO(34, 40, 42, 1),
      secondaryContainer: Color.fromRGBO(255, 182, 73, 1),
      // secondary: Color.fromRGBO(255, 168, 170, 1),
      // onSecondary: Color.fromRGBO(255, 234, 234, 1),
      // tertiary: Color.fromRGBO(250, 229, 152, 1),
      // onTertiary: Color.fromRGBO(250, 229, 152, 0.4),
      background: Color.fromRGBO(13, 14, 14, 1),
      onBackground: Color.fromRGBO(240, 243, 245, 1),

      surface: Color.fromRGBO(150, 152, 153, 1),
      onSurface: Color.fromRGBO(220, 223, 225, 1),
      surfaceVariant: Color.fromRGBO(240, 243, 245, 1), //background
      surfaceTint: Color.fromRGBO(83, 97, 102, 1),

      shadow: Color.fromRGBO(218, 215, 215, 1),

      error: Color.fromRGBO(212, 12, 12, 1),

      onError: Colors.white,
      brightness: Brightness.light,
      inversePrimary: Colors.white,
    ),
  );
}
