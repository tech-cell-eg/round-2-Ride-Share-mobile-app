import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';
import 'package:ride_share/core/shared/app_bar/menu_icon.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(),
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
                    HomeRentalButtonLocationButtons(),
                    SizedBox(height: 15),
                    SearchTransportDelivaryBox(),
                    AnimatedPadding(
                      duration: Duration(milliseconds: 300),
                      padding: EdgeInsets.only(
                        bottom:
                            (MediaQuery.of(context).viewInsets.bottom) / 2.4,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBtnAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildWalletButton(),
    );
  }

  CustomAppBar _buildAppBar() {
    return CustomAppBar(
      leading: MenuIcon(),
      actions: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(right: AppSizes.screenPadding),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(Iconsax.notification, color: Color(0xFF414141)),
          ),
        )
      ],
    );
  }

  Container _buildWalletButton() {
    return Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.only(bottom: 30),
      child: FloatingActionButton(
        elevation: 0,
        backgroundColor: Color(0xFF08b783),
        shape: StarBorder.polygon(sides: 6, pointRounding: 0.15),
        onPressed: () {},
        child: Icon(
          Iconsax.wallet_add_1,
          color: Colors.white,
        ),
      ),
    );
  }

  NavigationBar _buildBtnAppBar() {
    return NavigationBar(
      //height: 65,
      destinations: [
        NavigationDestination(
          icon: Icon(Iconsax.home),
          label: "Home",
        ),
        NavigationDestination(
          icon: Icon(Iconsax.search_normal),
          label: "Search",
        ),
        NavigationDestination(
          icon: SizedBox.shrink(),
          label: "Wallet",
        ),
        NavigationDestination(
          icon: Icon(Iconsax.calendar),
          label: "Sceduale",
        ),
        NavigationDestination(
          icon: Icon(Iconsax.user),
          label: "Profile",
        ),
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
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16.5),
            ),
            child: Text('Rental'),
          ),
        ),
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Icon(Iconsax.location, color: Color(0xFF5A5A5A)),
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
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 13),
      margin: EdgeInsets.only(bottom: 80),
      decoration: BoxDecoration(
        color: Color(0xFFB9E5D1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.primaryWalletBorderColor),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
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
          SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xFFE2F5ED),
            ),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {}, child: Text('Transport')),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF8AD4B5)),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      backgroundColor: Color(0xFFE2F5ED),
                    ),
                    child: Text(
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
