import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_constants.dart';
import 'package:ride_share/core/constants/app_styles.dart';

class CustomFillButton extends StatelessWidget {
  const CustomFillButton({
    super.key,
    required this.onTap,
    required this.title,
  });
  final Function() onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(AppConstants.containerBorderRediuse)),
            color: AppColors.buttonBackgraond),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: AppStyles.medium16w,
          ),
        ),
      ),
    );
  }
}
