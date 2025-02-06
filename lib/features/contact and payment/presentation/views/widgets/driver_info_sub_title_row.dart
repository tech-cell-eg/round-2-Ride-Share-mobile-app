import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_text_styles.dart';

class DriverInfoSubTitleRow extends StatelessWidget {
  const DriverInfoSubTitleRow({
    super.key,
    required this.title,
    required this.icon,
    this.isReview = false,
  });
  final String title;
  final IconData icon;
  final bool isReview;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 16,
          color: isReview ? Colors.yellow : AppColors.black,
        ),
        Text(
          title,
          // style: AppTextStyles.styleGrey10Regular,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: AppColors.gray5A,
          ),
        ),
      ],
    );
  }
}
