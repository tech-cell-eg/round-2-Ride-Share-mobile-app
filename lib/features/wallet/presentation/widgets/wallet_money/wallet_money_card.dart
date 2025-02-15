import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';

class WalletMonyCard extends StatelessWidget {
  final double moneyQuantity;
  final String title;
  const WalletMonyCard({
    super.key,
    required this.moneyQuantity,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 166 / 145,
      child: Container(
        //width: 166,
        // height: 145,
        padding: const EdgeInsets.all(AppSizes.walletMoneyCardPadding),
        decoration: BoxDecoration(
          color: AppColors.walletCardColor,
          borderRadius: BorderRadius.circular(AppSizes.outlinedButtonRadius),
          border: Border.all(
            color: AppColors.primaryWalletBorderColor,
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                '\$$moneyQuantity',
                style: AppTextStyles.walletMoneyCardTitleStyle,
              ),
            ),
            const SizedBox(height: 21),
            FittedBox(
              child: Text(
                title,
                style: AppTextStyles.walletMoneyCardSubTitleStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
