import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/constants/generated/app_icons.dart';

class FavoriteLocationCard extends StatelessWidget {
  const FavoriteLocationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.favCardPadding),
      decoration: _favCardDecoration(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 1),
            child: SvgPicture.asset(AppIcons.locationIcon),
          ),
          const SizedBox(width: AppSizes.spaceBtnItemInFavCard),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Office',
                  style: AppTextStyles.favCardTitleTextStyle,
                ),
                const SizedBox(height: AppSizes.spaceBtnItemInFavCard),
                Text(
                  '2972 Westheimer Rd. Santa Ana, Illinois 85486',
                  style: AppTextStyles.favCardSubTitleTextStyle,
                ),
              ],
            ),
          ),
          SvgPicture.asset(AppIcons.removeIcon),
        ],
      ),
    );
  }

  BoxDecoration _favCardDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(AppSizes.favCardBorderRadius),
      border: Border.all(
        color: AppColors.favCardBorderColor,
        width: AppSizes.favCardBorderWidth,
      ),
    );
  }
}
