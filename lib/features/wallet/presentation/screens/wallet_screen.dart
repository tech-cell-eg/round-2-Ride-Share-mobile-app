import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/generated/icons.dart';
import 'package:ride_share/core/shared/app_bar/custom_app_bar.dart';
import 'package:ride_share/core/shared/app_bar/menu_icon.dart';
import 'package:ride_share/features/wallet/presentation/widgets/wallet_screen_body.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(scaffoldKey),
      body: const WalletScreenBody(),
    );
  }

  CustomAppBar _buildAppBar(scaffoldKey) {
    return CustomAppBar(
      title: const Text(AppStrings.wallet),
      leading: MenuIcon(scaffoldKey: scaffoldKey),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: AppSizes.screenPadding),
          child: SvgPicture.asset(AppIcons.notificationIcon),
        ),
      ],
    );
  }
}
