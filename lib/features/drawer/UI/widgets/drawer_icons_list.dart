import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/generated/icons.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:ride_share/features/about_us/about_us_screen.dart';
import 'package:ride_share/features/complain/presentation/screens/complain_screen.dart';
import 'package:ride_share/features/drawer/UI/widgets/build_drawe_item.dart';
import 'package:ride_share/features/help_and_support/help_and_support_screen.dart';
import 'package:ride_share/features/history/UI/Screens/history_screen.dart';
import 'package:ride_share/features/settings/all_settings_screen.dart';

class DrawerIconsList extends StatelessWidget {
  const DrawerIconsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      children: [
        BuildDrawerItem(
          icon: MyIcons.history,
          title: AppStrings.history,
          onTap: () {
            context.push(const HistoryScreen());
          },
        ),
        _drawerDivider(),
        BuildDrawerItem(
          icon: MyIcons.complain,
          title: AppStrings.complain,
          onTap: () {
            context.push(const ComplainScreen());
          },
        ),
        _drawerDivider(),
        BuildDrawerItem(
          icon: MyIcons.referral,
          title: AppStrings.referral,
          onTap: () {},
        ),
        _drawerDivider(),
        BuildDrawerItem(
          icon: MyIcons.aboutUs,
          title: AppStrings.aboutUs,
          onTap: () {
            context.push(const AboutUsScreen());
          },
        ),
        _drawerDivider(),
        BuildDrawerItem(
          icon: MyIcons.settings,
          title: AppStrings.settings,
          onTap: () {
            context.push(const AllSettingsScreen());
          },
        ),
        _drawerDivider(),
        BuildDrawerItem(
          icon: MyIcons.helpSupport,
          title: AppStrings.helpAndSuppory,
          onTap: () {
            context.push(const HelpAndSupportScreen());
          },
        ),
        _drawerDivider(),
        BuildDrawerItem(
          icon: MyIcons.logout,
          title: AppStrings.logout,
          onTap: () {},
        ),
      ],
    );
  }

  Divider _drawerDivider() {
    return const Divider(
      color: Color(0xFFE8E8E8),
      height: 0.7,
      thickness: 1,
    );
  }
}
