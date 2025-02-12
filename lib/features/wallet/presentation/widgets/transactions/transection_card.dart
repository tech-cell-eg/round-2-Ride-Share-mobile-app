import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/constants/generated/icons.dart';

class TransectionCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final Function()? onTap;
  final double amount;
  const TransectionCard({
    super.key,
    this.title = AppStrings.welton,
    this.subTitle = 'Today at 09:20 am',
    this.onTap,
    this.amount = 570.00,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding:
            const EdgeInsets.only(left: 11, right: 17, top: 12, bottom: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.favCardBorderRadius),
          border: Border.all(
            color: AppColors.primaryWalletBorderColor,
            width: AppSizes.favCardBorderWidth,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(13),
              decoration: const ShapeDecoration(
                shape: CircleBorder(),
                color: AppColors.upVectorBgColor,
              ),
              child: SvgPicture.asset(MyIcons.iconsUpVector),
            ),
            const SizedBox(width: 13),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.transTitleTextStyle,
                  ),
                  const SizedBox(height: 3),
                  Text(
                    subTitle,
                    style: AppTextStyles.transSubTitleTextStyle,
                  )
                ],
              ),
            ),
            Text(
              '-\$$amount',
              style: AppTextStyles.transTitleTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
