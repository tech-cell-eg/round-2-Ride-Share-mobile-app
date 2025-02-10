import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/generated/app_icons.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';
import 'package:ride_share/core/shared/app_bar/menu_icon.dart';
import 'package:ride_share/features/wallet/presentation/widgets/wallet_screen_body.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: WalletScreenBody(),
    );
  }

  CustomAppBar _buildAppBar() {
    return CustomAppBar(
      title: Text(AppStrings.wallet),
      leading: MenuIcon(),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: AppSizes.screenPadding),
          child: SvgPicture.asset(AppIcons.notificationIcon),
        ),
      ],
    );
  }
}
