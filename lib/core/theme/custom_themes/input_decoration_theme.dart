import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';

class CustomInputDecorationTheme {
  CustomInputDecorationTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 1,
    //isDense: true,
    contentPadding:
        EdgeInsetsDirectional.only(start: 20.0, bottom: 18.0, top: 19.0),
    labelStyle: AppTextStyles.inputDecorationLabelStyle,
    hintStyle: AppTextStyles.inputDecorationLabelStyle,
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: AppTextStyles.inputDecorationLabelStyle,
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
          width: 1, color: AppColors.inputDecorationBorderColor),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
          width: 1, color: AppColors.inputDecorationBorderColor),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide:
          const BorderSide(width: 1, color: AppColors.textFiledBorderColor),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(width: 2, color: Colors.green),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 1,
    isDense: true,
    contentPadding: EdgeInsetsDirectional.only(start: 20.0, bottom: 18.0, top: 19.0),
    labelStyle: AppTextStyles.inputDecorationLabelStyle,
    hintStyle: AppTextStyles.inputDecorationLabelStyle,
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: AppTextStyles.inputDecorationLabelStyle,
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
          width: 1, color: AppColors.inputDecorationBorderColor),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
          width: 1, color: AppColors.inputDecorationBorderColor),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide:
          const BorderSide(width: 1, color: AppColors.textFiledBorderColor),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(width: 2, color: Colors.green),
    ),
  );
}
