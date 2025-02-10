import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_sizes.dart';

import 'package:ride_share/core/constants/app_strings.dart';

import 'package:ride_share/core/constants/app_text_styles.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.favCardBorderRadius),
        border: Border.all(
          color: AppColors.primaryWalletBorderColor,
          width: AppSizes.favCardBorderWidth,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '15% off',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.offerTitleTextStyle,
                ),
                SizedBox(height: 2),
                Text(
                  AppStrings.blackFriday,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.offerSubTitleTextStyle,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: ElevatedButton(
              onPressed: () {},
              child: const FittedBox(child: Text(AppStrings.collect)),
            ),
          )
        ],
      ),
    );
  }
}
