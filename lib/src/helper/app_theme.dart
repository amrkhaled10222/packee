import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Light Color Scheme
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Colors.black,
    onPrimary: Colors.white,
    secondary: Colors.orange,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    background: Colors.white,
    onBackground: Colors.black,
    surface: Colors.grey,
    onSurface: Colors.black,
  );

  // Dark Color Scheme
  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.white,
    onPrimary: Colors.black,
    secondary: Colors.orange,
    onSecondary: Colors.black,
    error: Colors.red,
    onError: Colors.black,
    background: Colors.black,
    onBackground: Colors.white,
    surface: Colors.grey,
    onSurface: Colors.white,
  );

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    colorScheme: lightColorScheme,
    scaffoldBackgroundColor: lightColorScheme.background,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: lightColorScheme.onBackground,
        letterSpacing: -1,
      ),
      bodyLarge: GoogleFonts.poppins(
        fontSize: 16,
        color: lightColorScheme.onBackground,
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: lightColorScheme.secondary,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    iconTheme: IconThemeData(
      color: lightColorScheme.onBackground,
    ),
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    colorScheme: darkColorScheme,
    scaffoldBackgroundColor: darkColorScheme.background,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: darkColorScheme.onBackground,
        letterSpacing: -1,
      ),
      bodyLarge: GoogleFonts.poppins(
        fontSize: 16,
        color: darkColorScheme.onBackground,
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: darkColorScheme.secondary,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    iconTheme: IconThemeData(
      color: darkColorScheme.onBackground,
    ),
  );

  // Dynamic Theme
  static ThemeData themeData(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark ? darkTheme : lightTheme;
  }
}
