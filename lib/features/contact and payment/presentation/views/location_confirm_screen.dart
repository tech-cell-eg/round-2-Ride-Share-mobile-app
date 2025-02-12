import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';
import 'package:ride_share/core/shared/app_bar/menu_icon.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:ride_share/features/contact%20and%20payment/presentation/views/widgets/bottom_container.dart';
import 'package:ride_share/features/drawer/UI/screens/drawer_screen.dart';
import 'package:ride_share/features/notifications/UI/Screens/notifications_screen.dart';

import 'widgets/location_confirm_screen_body.dart';

class LocationConfirmScreen extends StatefulWidget {
  const LocationConfirmScreen({super.key});
  static const routeName = '/location-confirm-screen';

  @override
  State<LocationConfirmScreen> createState() => _LocationConfirmScreenState();
}

class _LocationConfirmScreenState extends State<LocationConfirmScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerScreen(),
      appBar: _buildAppBar(context, scaffoldKey),
      body: const LocationConfirmScreenBody(),
      bottomSheet: const BottomContainer(),
    );
  }

  CustomAppBar _buildAppBar(
      BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
    return CustomAppBar(
      leading: MenuIcon(scaffoldKey: scaffoldKey),
      actions: [
        InkWell(
          onTap: () {
            context.push(const NotificationsScreen());
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(right: AppSizes.screenPadding),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Icon(Iconsax.notification, color: Color(0xFF414141)),
          ),
        )
      ],
    );
  }
}
