import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_font_weights.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.darkGreen, width: 2),
            borderRadius: BorderRadius.circular(10),
            color: AppColors.lighterGreen),
        child: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.transparent,
            indicator: BoxDecoration(
              color: AppColors.darkGreen,
              borderRadius: BorderRadius.circular(8),
            ),
            labelColor: AppColors.white,
            unselectedLabelColor: AppColors.black,
            labelStyle: const TextStyle(
                fontSize: 12, fontWeight: AppFontWeights.medium),
            unselectedLabelStyle: const TextStyle(
                fontSize: 12, fontWeight: AppFontWeights.medium),
            tabs: [
              const Text('Upcoming'),
              const Text('Completed'),
              const Text('Canceld'),
            ]),
      ),
    );
  }
}
