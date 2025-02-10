import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';

class SectionHeading extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final Function()? onTap;
  final bool showActionButton;
  const SectionHeading({
    super.key,
    required this.title,
    this.buttonTitle = AppStrings.seeAll,
    this.onTap,
    this.showActionButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.walletTransactionsStyle,
          ),
        ),
        const SizedBox(width: AppSizes.md),
        if (showActionButton)
          InkWell(
            onTap: onTap,
            child: Text(
              buttonTitle,
              style: AppTextStyles.seeAllTextStyle,
            ),
          ),
      ],
    );
  }
}
