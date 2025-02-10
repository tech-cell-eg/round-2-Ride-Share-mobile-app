import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/theme/custom_themes/app_bar_theme.dart';
import 'package:ride_share/core/theme/custom_themes/elevated_button_theme.dart';
import 'package:ride_share/core/theme/custom_themes/input_decoration_theme.dart';
import 'package:ride_share/core/theme/custom_themes/outlined_button_theme.dart';

abstract class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    scaffoldBackgroundColor: AppColors.white,
    outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CustomInputDecorationTheme.lightInputDecorationTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.lightElevetedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.black,
    appBarTheme: CustomAppBarTheme.darkAppBarTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: CustomInputDecorationTheme.darkInputDecorationTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.darkElevetedButtonTheme,
  );
}
