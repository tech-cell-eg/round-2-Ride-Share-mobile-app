import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';
import 'package:ride_share/core/shared/app_bar/menu_icon.dart';
import 'package:ride_share/features/offers/presentation/widgets/offer_screen_body.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text(AppStrings.offer),
        leading: const MenuIcon(),
      ),
      body: OfferScreenBody(),
    );
  }
}
