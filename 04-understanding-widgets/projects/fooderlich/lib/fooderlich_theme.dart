import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooderlichTheme {
  static final lightTextTheme = TextTheme(
    titleLarge: GoogleFonts.openSans(color: Colors.black, fontSize: 18),
    titleMedium: GoogleFonts.openSans(color: Colors.black),
    bodyMedium: GoogleFonts.openSans(
        fontSize: 14, fontWeight: FontWeight.w700, color: Colors.black),
    headlineLarge: GoogleFonts.openSans(
        fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: GoogleFonts.openSans(
        fontSize: 21, fontWeight: FontWeight.w700, color: Colors.black),
    headlineSmall: GoogleFonts.openSans(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
  );
  static final darkTextTheme = TextTheme(
    titleLarge: GoogleFonts.openSans(color: Colors.white),
    titleMedium: GoogleFonts.openSans(color: Colors.white),
    bodyMedium: GoogleFonts.openSans(
        fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white),
    headlineLarge: GoogleFonts.openSans(
        fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: GoogleFonts.openSans(
        fontSize: 21, fontWeight: FontWeight.w700, color: Colors.white),
    headlineSmall: GoogleFonts.openSans(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
  );
  static final lightThemeData = ThemeData(
    brightness: Brightness.light,
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateColor.resolveWith(
        (states) {
          return Colors.black;
        },
      ),
    ),
    appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black, backgroundColor: Colors.white),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.green,
    ),
    textTheme: lightTextTheme,
  );
  static final darkThemeData = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      foregroundColor: Colors.white,
      backgroundColor: Colors.grey[900],
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      backgroundColor: Colors.green,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.green,
    ),
    textTheme: darkTextTheme,
  );
}
