import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';

import '../../core/constants/app_colors.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 362.w,
      height: 64.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.primaryColor,
        ),
      ),
      child: ListTile(
        leading: Icon(
          Icons.flag,
          size: 40,
        ),
        title: Text(
          'English',
          style: AppTextStyles.s16w500,
        ),
        subtitle: Text(
          'English',
          style: AppTextStyles.s12w500.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: Icon(
          Icons.circle,
        ),
      ),
    );
  }
}
