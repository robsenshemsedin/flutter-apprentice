import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooderlichTheme {
  static final lightTextTheme = TextTheme(
    titleLarge: GoogleFonts.openSans(color: Colors.black),
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
}
