import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';

class ArrowBackIcon extends StatelessWidget {
  const ArrowBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: AppSizes.screenPadding),
      child: Row(
        children: [
          Icon(
            Icons.arrow_back_ios,
            color: AppColors.appBarTitleColor,
          ),
          const SizedBox(width: 5),
          Text(
            'Back',
            style: AppTextStyles.leadingTextStyle,
          ),
        ],
      ),
    );
  }
}
