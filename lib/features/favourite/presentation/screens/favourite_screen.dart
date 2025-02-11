import 'package:flutter/material.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';
import 'package:ride_share/core/shared/app_bar/menu_icon.dart';
import 'package:ride_share/features/favourite/presentation/widgets/favourite_screen_body.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Text('Favourite'),
        leading: MenuIcon(),
      ),
      body: FavouriteScreenBody(),
    );
  }
}
