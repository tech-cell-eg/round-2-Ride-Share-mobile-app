
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';

class ArrowBackWidget extends StatelessWidget {
  const ArrowBackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.arrow_back_ios,
          size: 25.sp,
          color: AppColors.greyColor,
        ),
        Text(
          'Back',
          style: AppTextStyles.s16w400.copyWith(color: AppColors.blackColor),
        ),
      ],
    );
  }
}
