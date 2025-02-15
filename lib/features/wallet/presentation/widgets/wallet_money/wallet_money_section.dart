import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/features/wallet/presentation/widgets/wallet_money/wallet_money_card.dart';

class WalletMoneySection extends StatelessWidget {
  const WalletMoneySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: WalletMonyCard(
            moneyQuantity: 500,
            title: AppStrings.availableBalance,
          ),
        ),
        SizedBox(width: AppSizes.spaceBtwWalletCards),
        Expanded(
          child: WalletMonyCard(
            moneyQuantity: 200,
            title: AppStrings.totalExpend,
          ),
        ),
      ],
    );
  }
}