import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';

class CustomOutlinedButtonTheme {
  CustomOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.primaryColor,
      backgroundColor: AppColors.white,
      side: const BorderSide(color: AppColors.primaryColor),
      disabledBackgroundColor: AppColors.primaryColor,
      disabledForegroundColor: AppColors.black,
      textStyle: AppTextStyles.outlinedTextStyle,
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.outlinedButtonRadius),
      ),
    ),
  );
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.primaryColor,
      backgroundColor: AppColors.black,
      side: const BorderSide(color: AppColors.primaryColor),
      disabledBackgroundColor: AppColors.primaryColor,
      disabledForegroundColor: AppColors.black,
      textStyle: AppTextStyles.outlinedTextStyle,
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.outlinedButtonRadius),
      ),
    ),
  );
}
