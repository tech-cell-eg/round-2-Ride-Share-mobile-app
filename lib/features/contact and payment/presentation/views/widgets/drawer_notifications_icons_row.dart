import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import 'header_icon.dart';

class DrawerNotificationsIconsRow extends StatelessWidget {
  const DrawerNotificationsIconsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 60,
      right: 15,
      left: 15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderIcon(
            icon: Icons.menu,
            backgroundColor: AppColors.mainColor,
            onTap: () {},
          ),
          HeaderIcon(
            icon: Icons.notifications_outlined,
            backgroundColor: Colors.white,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
