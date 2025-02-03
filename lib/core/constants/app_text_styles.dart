import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const appBarTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.appBarTitleColor,
  );

  static const favCardTitleTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.favCartTitleColor,
  );

  static const favCardSubTitleTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.favCartSubTitleColor,
  );
}
