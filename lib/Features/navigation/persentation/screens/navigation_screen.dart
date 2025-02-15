import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_share/core/constants/generated/icons.dart';
import 'package:ride_share/features/drawer/UI/screens/drawer_screen.dart';
import 'package:ride_share/features/drawer/UI/widgets/user_info.dart';
import 'package:ride_share/features/favourite/presentation/screens/favourite_screen.dart';
import 'package:ride_share/features/home/presentation/screens/home_screen.dart';
import 'package:ride_share/features/navigation/persentation/widgets/app_button_navigation_bar.dart';
import 'package:ride_share/features/offer/presentation/screens/offer_screen.dart';
import 'package:ride_share/features/wallet/presentation/screens/wallet_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> _screens = [];

  @override
  void initState() {
    super.initState();
    _screens.addAll([
      HomeScreen(scaffoldKey: _scaffoldKey),
      FavouriteScreen(scaffoldKey: _scaffoldKey),
      WalletScreen(scaffoldKey: _scaffoldKey),
      OfferScreen(scaffoldKey: _scaffoldKey),
      const UserInfo(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const DrawerScreen(),
      onDrawerChanged: (isOpened) {
        if (!isOpened) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
      extendBody: true,
      body: ValueListenableBuilder<int>(
        valueListenable: selectedIndex,
        builder: (context, index, child) {
          return IndexedStack(index: index, children: _screens);
        },
      ),
      bottomNavigationBar: AppBottomNavigationBar(selectedIndex: selectedIndex),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildWalletButton(),
    );
  }

  Widget _buildWalletButton() {
    return Container(
      height: 100,
      width: 100,
      margin: const EdgeInsets.only(bottom: 30),
      child: FloatingActionButton(
        elevation: 0,
        backgroundColor: const Color(0xFF08b783),
        shape: const StarBorder.polygon(sides: 6, pointRounding: 0.15),
        onPressed: () {
          FocusManager.instance.primaryFocus?.unfocus();
          selectedIndex.value = 2;
        },
        child: SvgPicture.asset(AppIcons.wallet),
      ),
    );
  }
}
