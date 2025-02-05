import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/features/wallet/presentation/widgets/transactions/transection_card.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) => TransectionCard(),
        separatorBuilder: (context, index) =>
            const SizedBox(height: AppSizes.spaceBtwTransCards),
      ),
    );
  }
}
