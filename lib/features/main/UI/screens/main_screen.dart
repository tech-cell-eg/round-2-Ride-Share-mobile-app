import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/features/favs/favs_screen.dart';
import 'package:ride_share/features/home/home_screen.dart';
import 'package:ride_share/features/main/UI/widgets/app_button_navigation_bar.dart';
import 'package:ride_share/features/main/UI/widgets/app_hexagonal_floating_button.dart';
import 'package:ride_share/features/offer/offer_screen.dart';
import 'package:ride_share/features/profile/profile_screen.dart';
import 'package:ride_share/features/wallet/wallet_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreen,
      body: ValueListenableBuilder<int>(
        valueListenable: selectedIndex,
        builder: (context, index, child) {
          return IndexedStack(
            index: selectedIndex.value,
            children: [
              const HomeScreen(),
              const FavsScreen(),
              const WalletScreen(),
              const OfferScreen(),
              const ProfileScreen(),
            ],
          );
        },
      ),
      bottomNavigationBar: AppBottomNavigationBar(selectedIndex: selectedIndex),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          AppHexagonalFloatingButton(selectedIndex: selectedIndex),
    );
  }
}
