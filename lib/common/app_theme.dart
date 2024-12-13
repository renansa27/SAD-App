import 'package:sad_app/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static final defaultTheme = ThemeData(
    primarySwatch: Colors.orange, // Define a cor primária como laranja
    unselectedWidgetColor:
        Colors.orange, // Define a cor dos widgets desativados
    brightness: Brightness.light,
    primaryColor: AppColors.halloweenOrange,
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
        primaryContainer: AppColors.halloweenOrange,
        secondary: Color(0xff51B848),
        secondaryContainer: AppColors.halloweenOrange,
        surface: Color(0xffeceff0),
        error: Colors.red,
        onPrimary: Color(0xff51B848),
        onSecondary: Color(0xffeceff0),
        onSurface: AppColors.halloweenOrange,
        onError: Colors.red,
        brightness: Brightness.light,
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.halloweenOrange; // Cor quando selecionado
        }
        return AppColors.halloweenOrange; // Cor padrão
      }),
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
