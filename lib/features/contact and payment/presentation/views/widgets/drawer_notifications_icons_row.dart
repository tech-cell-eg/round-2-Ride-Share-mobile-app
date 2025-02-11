import 'package:flutter/material.dart';
import 'package:ride_share/core/config/routing/routes.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';

import '../../../../../core/constants/app_colors.dart';
import 'header_icon.dart';

class DrawerNotificationsIconsRow extends StatelessWidget {
  const DrawerNotificationsIconsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.06,
      right: 15,
      left: 15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderIcon(
            icon: Icons.menu,
            backgroundColor: AppColors.mainColor,
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          HeaderIcon(
            icon: Icons.notifications_outlined,
            backgroundColor: Colors.white,
            onTap: () {
              context.pushNamed(Routes.notification);
            },
          ),
        ],
      ),
    );
  }
}
