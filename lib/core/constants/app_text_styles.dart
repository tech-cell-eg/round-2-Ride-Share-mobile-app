import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_font_weights.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle font16Grey41Regular = TextStyle(
    fontSize: 16,
    color: AppColors.gray41,
    fontWeight: AppFontWeights.regular,
  );

  static TextStyle font24Grey41Medium = TextStyle(
    fontSize: 24,
    color: AppColors.gray41,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle font14GreyA0Medium = TextStyle(
    fontSize: 14,
    color: AppColors.grayA0,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle font20Grey41Medium = TextStyle(
    fontSize: 20,
    color: AppColors.gray41,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle font12Grey41Medium = TextStyle(
    fontSize: 12,
    color: AppColors.gray41,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle font12MainColorMedium = TextStyle(
    fontSize: 12,
    color: AppColors.mainColor,
    fontWeight: AppFontWeights.medium,
  );
}
