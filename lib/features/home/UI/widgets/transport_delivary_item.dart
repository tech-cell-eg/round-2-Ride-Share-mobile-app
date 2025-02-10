import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';

class TransportDelivaryItem extends StatelessWidget {
  const TransportDelivaryItem({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });
  final String title;
  final bool isSelected;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.417,
        height: 54,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.darkGreen : AppColors.lighterGreen,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Text(
          title,
          style: isSelected
              ? AppTextStyles.font16WhiteMedium
              : AppTextStyles.font16BlackMedium,
        )),
      ),
    );
  }
}
