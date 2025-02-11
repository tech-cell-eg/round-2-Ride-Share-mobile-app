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
          icon: AppIcons.history,
          title: AppStrings.history,
          onTap: () {
            context.pushNamed(Routes.history);
          },
        ),
        _drawerDivider(),
        BuildDrawerItem(
          icon: AppIcons.complain,
          title: AppStrings.complain,
          onTap: () {
            context.pushNamed(Routes.complain);
          },
        ),
        _drawerDivider(),
        BuildDrawerItem(
          icon: AppIcons.referral,
          title: AppStrings.referral,
          onTap: () {},
        ),
        _drawerDivider(),
        BuildDrawerItem(
          icon: AppIcons.aboutUs,
          title: AppStrings.aboutUs,
          onTap: () {},
        ),
        _drawerDivider(),
        BuildDrawerItem(
          icon: AppIcons.settings,
          title: AppStrings.settings,
          onTap: () {},
        ),
        _drawerDivider(),
        BuildDrawerItem(
          icon: AppIcons.helpSupport,
          title: AppStrings.helpAndSuppory,
          onTap: () {},
        ),
        _drawerDivider(),
        BuildDrawerItem(
          icon: AppIcons.logout,
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
