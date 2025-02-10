import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/features/offers/presentation/widgets/offers/offer_card.dart';

class OfferScreenBody extends StatelessWidget {
  const OfferScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.screenPadding),
      child: Column(
        children: [
          const SizedBox(height: AppSizes.appBarSpace),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              itemBuilder: (context, index) => const OfferCard(),
              separatorBuilder: (context, index) =>
                  const SizedBox(height: AppSizes.spaceBtwOfferCards),
            ),
          ),
          const SizedBox(height: AppSizes.md),
        ],
      ),
    );
  }
}
