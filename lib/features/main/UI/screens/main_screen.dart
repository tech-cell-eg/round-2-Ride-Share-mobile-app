import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/constants/generated/icons.dart';
import 'package:ride_share/features/drawer/UI/screens/drawer_screen.dart';
import 'package:ride_share/features/drawer/UI/widgets/user_info.dart';
import 'package:ride_share/features/favourite/presentation/screens/favourite_screen.dart';
import 'package:ride_share/features/home/UI/screens/home_screen.dart';
import 'package:ride_share/features/main/UI/widgets/app_button_navigation_bar.dart';
import 'package:ride_share/features/offer/presentation/screens/offer_screen.dart';
import 'package:ride_share/features/wallet/presentation/screens/wallet_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const DrawerScreen(),
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
      body: ValueListenableBuilder<int>(
        valueListenable: selectedIndex,
        builder: (context, index, child) {
          return IndexedStack(
            index: selectedIndex.value,
            children: [
              HomeScreen(scaffoldKey: _scaffoldKey),
              FavouriteScreen(scaffoldKey: _scaffoldKey),
              WalletScreen(scaffoldKey: _scaffoldKey),
              OfferScreen(scaffoldKey: _scaffoldKey),
              const UserInfo(),
            ],
          );
        },
      ),
      bottomNavigationBar: AppBottomNavigationBar(selectedIndex: selectedIndex),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildWalletButton(),
    );
  }

  Container _buildWalletButton() {
    return Container(
      height: 100,
      width: 100,
      margin: const EdgeInsets.only(bottom: 30),
      child: FloatingActionButton(
        elevation: 0,
        backgroundColor: const Color(0xFF08b783),
        shape: const StarBorder.polygon(sides: 6, pointRounding: 0.15),
        onPressed: () {
          selectedIndex.value = 2;
        },
        child: SvgPicture.asset(MyIcons.wallet),
      ),
    );
  }
}
