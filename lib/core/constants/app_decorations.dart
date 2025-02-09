import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_constants.dart';

class AppDecorations {
  AppDecorations._();
  static BoxDecoration dafaultContainer = BoxDecoration(
    color: AppColors.containerBackgraond,
    border: Border.all(color: AppColors.containerBorder),
    borderRadius: const BorderRadius.all(
        Radius.circular(AppConstants.containerBorderRediuse)),
  );
}
