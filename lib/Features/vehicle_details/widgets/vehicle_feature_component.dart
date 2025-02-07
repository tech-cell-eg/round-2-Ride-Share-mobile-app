import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_constants.dart';
import 'package:ride_share/core/constants/app_styles.dart';

class VehicleFeaturesComponent extends StatelessWidget {
  const VehicleFeaturesComponent({
    super.key,
    required this.title,
    required this.value,
  });
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.containerBackgraond,
        border: Border.all(color: AppColors.containerBorder),
        borderRadius: const BorderRadius.all(
            const Radius.circular(AppConstants.containerBorderRediuse)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppStyles.medium14B),
          Text(value, style: AppStyles.medium14B),
        ],
      ),
    );
  }
}
