import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/constants/generated/icons.dart';

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
            child: SvgPicture.asset(MyIcons.locationIcon),
          ),
          const SizedBox(width: AppSizes.spaceBtnItemInFavCard),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Office',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.favCardTitleTextStyle,
                ),
                 SizedBox(height: AppSizes.spaceBtnItemInFavCard),
                Text(
                  '2972 Westheimer Rd. Santa Ana, Illinois 85486',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.favCardSubTitleTextStyle,
                ),
              ],
            ),
          ),
          SvgPicture.asset(MyIcons.removeIcon),
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
