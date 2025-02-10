import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/generated/images.dart';
import 'package:ride_share/features/drawer/UI/screens/drawer_screen.dart';
import 'package:ride_share/features/home/UI/widgets/home_rental_location_buttons.dart';
import 'package:ride_share/features/home/UI/widgets/search_transport_delivary_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerScreen(),
      body: Stack(
        children: [
          Image.asset(
            AppImages.imagesMapp,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.13,
            right: 15,
            left: 15,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HomeRentalButtonLocationButtons(),
                SizedBox(height: 15),
                SearchTransportDelivaryBox(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
