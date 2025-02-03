import 'package:flutter/material.dart';
import 'package:ride_share/features/favourite/presentation/widgets/custom_favourite_appbar.dart';
import 'package:ride_share/features/favourite/presentation/widgets/favourite_screen_body.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomFavouriteAppBar(),
      body: FavouriteScreenBody(),
    );
  }
}
