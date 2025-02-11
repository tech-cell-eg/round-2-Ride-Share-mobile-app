import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/features/favourite/presentation/widgets/favourite_location_card.dart';

class FavouriteScreenBody extends StatelessWidget {
  const FavouriteScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: AppSizes.screenPadding,
        right: AppSizes.screenPadding,
      ),
      child: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) => const FavoriteLocationCard(),
        separatorBuilder: (context, index) =>
            const SizedBox(height: AppSizes.spaceBtwFavCards),
      ),
    );
  }
}
