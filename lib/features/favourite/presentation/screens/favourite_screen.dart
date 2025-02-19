import 'package:flutter/material.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';
import 'package:ride_share/core/shared/app_bar/menu_icon.dart';
import 'package:ride_share/features/favourite/presentation/widgets/favourite_screen_body.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key, required this.scaffoldKey});
    final GlobalKey<ScaffoldState> scaffoldKey;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        title: const Text('Favourite'),
        leading: MenuIcon(
          scaffoldKey: scaffoldKey,
        ),
      ),
      body: const FavouriteScreenBody(),
    );
  }
}
