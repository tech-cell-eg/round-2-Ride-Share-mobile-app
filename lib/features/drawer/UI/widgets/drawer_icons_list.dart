import 'package:flutter/material.dart';
import 'package:ride_share/core/config/routing/routes.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/generated/icons.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:ride_share/features/drawer/UI/widgets/build_drawe_item.dart';

class DrawerIconsList extends StatelessWidget {
  const DrawerIconsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      children: [
        BuildDrawerItem(
            icon: MyIcons.iconsHistory,
            title: AppStrings.history,
            onTap: () {
              context.pushNamed(Routes.history);
            }),
        BuildDrawerItem(
            icon: MyIcons.iconsComplain,
            title: AppStrings.complain,
            onTap: () {
              context.pushNamed(Routes.complain);
            }),
        BuildDrawerItem(
            icon: MyIcons.iconsReferral,
            title: AppStrings.referral,
            onTap: () {}),
        BuildDrawerItem(
            icon: MyIcons.iconsAboutUs,
            title: AppStrings.aboutUs,
            onTap: () {}),
        BuildDrawerItem(
            icon: MyIcons.iconsSettings,
            title: AppStrings.settings,
            onTap: () {}),
        BuildDrawerItem(
            icon: MyIcons.iconsHelpSupport,
            title: AppStrings.helpAndSuppory,
            onTap: () {}),
        BuildDrawerItem(
            icon: MyIcons.iconsLogout, title: AppStrings.logout, onTap: () {}),
      ],
    );
  }
}
