import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const TextStyle styleBlack16Medium = TextStyle(
    color: AppColors.customBlack,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle styleGrey10Regular = TextStyle(
    color: AppColors.customGrey,
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle styleGrey14Medium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color(0xff888888),
  );
}
