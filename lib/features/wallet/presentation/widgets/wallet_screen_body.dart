import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/shared/sections/section_heading.dart';
import 'package:ride_share/features/wallet/presentation/widgets/transactions/transaction_history_list_view%20.dart';
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
          _buildAddMoneyButton(),
          const SizedBox(height: AppSizes.spaceBtnSectionsInWallet),
          WalletMoneySection(),
          const SizedBox(height: AppSizes.spaceBtnSectionsInWallet),
          SectionHeading(title: 'Transactions', onTap: () {}),
          const SizedBox(height: AppSizes.spaceBtwTransCards),
          TransactionHistoryListView(),
          const SizedBox(height: AppSizes.md),
        ],
      ),
    );
  }

  Widget _buildAddMoneyButton() {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: OutlinedButton(
        onPressed: () {},
        child: Text('Add Money'),
      ),
    );
  }
}


