import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';
import 'package:ride_share/core/shared/app_bar/menu_icon.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:ride_share/features/contact%20and%20payment/presentation/views/location_confirm_screen.dart';
import 'package:ride_share/features/list_transportion/list_transportion_page.dart';
import 'package:ride_share/features/notifications/UI/Screens/notifications_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context, scaffoldKey),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
            child: Image.asset(
              'assets/images/google_map.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.screenPadding,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const HomeRentalButtonLocationButtons(),
                    const SizedBox(height: 15),
                    const SearchTransportDelivaryBox(),
                    AnimatedPadding(
                      duration: const Duration(milliseconds: 300),
                      padding: EdgeInsets.only(
                        bottom: (MediaQuery.of(context).viewInsets.bottom) / 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
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

class HomeRentalButtonLocationButtons extends StatelessWidget {
  const HomeRentalButtonLocationButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ElevatedButton(
            onPressed: () {
              context.push(const ListTransportionPage());
            },
            style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(horizontal: 60, vertical: 16.5),
            ),
            child: const Text('Rental'),
          ),
        ),
        GestureDetector(
          onTap: () {
            context.push(const LocationConfirmScreen());
          },
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Icon(Iconsax.location, color: Color(0xFF5A5A5A)),
          ),
        ),
      ],
    );
  }
}

class SearchTransportDelivaryBox extends StatelessWidget {
  const SearchTransportDelivaryBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
      margin: const EdgeInsets.only(bottom: 80),
      decoration: BoxDecoration(
        color: const Color(0xFFB9E5D1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.primaryWalletBorderColor),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const TextField(
            style: TextStyle(color: Color(0xFFA0A0A0)),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFE2F5ED),
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Iconsax.heart),
              hintText: 'Search for a location',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF8AD4B5)),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xFFE2F5ED),
            ),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Transport')),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF8AD4B5)),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      backgroundColor: const Color(0xFFE2F5ED),
                    ),
                    child: const Text(
                      'Delivery',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
