import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.isHighlited,
  });
  final bool isHighlited;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
      child: Container(
        width: 362,
        height: 97,
        decoration: BoxDecoration(
          color: isHighlited ? AppColors.lighterGreen : AppColors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Missed Call',
                style: AppTextStyles.font16BlackMedium,
              ),
              Text(
                'Lorem ipsum dolor sit amet consectetur. Ultrici es tincidunt eleifend vitae',
                style: AppTextStyles.font12Gray89Regular,
                maxLines: 2,
              ),
              Text(
                '24 Minutes ago',
                style: AppTextStyles.font12Gray89Regular,
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
