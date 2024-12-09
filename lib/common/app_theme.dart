import 'package:sad_app/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static final defaultTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    hintColor: AppColors.hintColorTextField,
    dividerColor: AppColors.dividerColor,
    scaffoldBackgroundColor: AppColors.aliceBlue,
    canvasColor: AppColors.canvasColor,
    textTheme: GoogleFonts.robotoTextTheme(),
    primaryTextTheme: GoogleFonts.robotoTextTheme(),
    cardTheme: const CardTheme(
      elevation: 5.0,
      shadowColor: Colors.grey,
      margin: EdgeInsets.all(8),
    ),
    buttonTheme: const ButtonThemeData(
      colorScheme: ColorScheme(
        primary: Color(0xff51B848),
        primaryContainer: Color(0xff0088CB),
        secondary: Color(0xff51B848),
        secondaryContainer: Color(0xff0088CB),
        surface: Color(0xffeceff0),
        background: Color(0xffeceff0),
        error: Colors.red,
        onPrimary: Color(0xff51B848),
        onSecondary: Color(0xffeceff0),
        onSurface: Color(0xff0088CB),
        onBackground: Color(0xffeceff0),
        onError: Colors.red,
        brightness: Brightness.light,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(),
    ),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: AppColors.accentColor),
  );
}
