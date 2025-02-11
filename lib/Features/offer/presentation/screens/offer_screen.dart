import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';
import 'package:ride_share/core/shared/app_bar/menu_icon.dart';
import 'package:ride_share/features/offer/presentation/widgets/offer_screen_body.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text(AppStrings.offer),
        leading: MenuIcon(
          scaffoldKey: scaffoldKey,
        ),
      ),
      body: const OfferScreenBody(),
    );
  }
}
