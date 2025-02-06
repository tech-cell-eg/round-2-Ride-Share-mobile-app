import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_font_weights.dart';

class AppTextStyles {
  AppTextStyles._();

  static const TextStyle s24w500 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,  
  );
   static const TextStyle s14w500 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,  
  );

  static const TextStyle s16w400 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400, // Regular
  );

   static const TextStyle s16w500 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500, // Medium
    
  );

  static const TextStyle s12w500 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500, // Medium
    
  );
  
    static TextStyle font16Grey41Regular = const TextStyle(
    fontSize: 16,
    color: AppColors.gray41,
    fontWeight: AppFontWeights.regular,
  );
  static TextStyle font24Grey41Medium = const TextStyle(
    fontSize: 24,
    color: AppColors.gray41,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle font14GreyA0Medium = const TextStyle(
    fontSize: 14,
    color: AppColors.grayA0,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle font20Grey41Medium = const TextStyle(
    fontSize: 20,
    color: AppColors.gray41,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle font12Grey41Medium = const TextStyle(
    fontSize: 12,
    color: AppColors.gray41,
    fontWeight: AppFontWeights.medium,
  );

  static TextStyle font12MainColorMedium = const TextStyle(
    fontSize: 12,
    color: AppColors.mainColor,
    fontWeight: AppFontWeights.medium,
  );
}
