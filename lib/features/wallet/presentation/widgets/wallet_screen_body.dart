import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/shared/sections/section_heading.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:ride_share/features/wallet/presentation/screens/add_amount_screen.dart';
import 'package:ride_share/features/wallet/presentation/widgets/transactions/transaction_history_list_view.dart';
import 'package:ride_share/features/wallet/presentation/widgets/wallet_money/wallet_money_section.dart';

class WalletScreenBody extends StatelessWidget {
  const WalletScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.screenPadding),
      child: Column(
        children: [
          const SizedBox(height: AppSizes.spaceBtnSectionsInWallet),
          _buildAddMoneyButton(context),
          const SizedBox(height: AppSizes.spaceBtnSectionsInWallet),
          const WalletMoneySection(),
          const SizedBox(height: AppSizes.spaceBtnSectionsInWallet),
          SectionHeading(title: AppStrings.transactions, onTap: () {}),
          const SizedBox(height: AppSizes.spaceBtwTransCards),
          const TransactionHistoryListView(),
          const SizedBox(height: AppSizes.md),
        ],
      ),
    );
  }

  Widget _buildAddMoneyButton(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: OutlinedButton(
        onPressed: () {
          context.push(const AddAmountScreen());
        },
        child: const Text(AppStrings.addMoney),
      ),
    );
  }
}
