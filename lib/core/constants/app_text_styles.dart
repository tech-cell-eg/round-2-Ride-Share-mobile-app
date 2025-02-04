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

  static const outlinedTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
  );

  static const walletMoneyCardTitleStyle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w500,
    color: AppColors.walletMoneyColor,
  );

  static const walletMoneyCardSubTitleStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.walletMoneyColor,
  );

  static const walletTransactionsStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.favCartTitleColor,
  );

  static const seeAllTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.seeAllColor,
  );

  static const transTitleTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.transectionTitleColor,
  );
  
  static const transSubTitleTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.walletMoneyColor,
  );
}
