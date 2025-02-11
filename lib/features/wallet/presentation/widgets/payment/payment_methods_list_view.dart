import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/features/wallet/presentation/widgets/payment/payment_card.dart';

class PaymentMethodsListView extends StatelessWidget {
  const PaymentMethodsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 4,
      // padding: EdgeInsets.zero,
      // physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => index == 0
          ? const PaymentCard(isSelected: true)
          : const PaymentCard(),
      separatorBuilder: (context, index) =>
          const SizedBox(height: AppSizes.spaceBtwPaymentCard),
    );
  }
}
