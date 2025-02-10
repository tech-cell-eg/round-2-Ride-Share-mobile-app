import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/widgets/default_app_bar.dart';
import 'package:ride_share/features/drawer/UI/widgets/drawer_icons_list.dart';
import 'package:ride_share/features/drawer/UI/widgets/user_info.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(80), bottomRight: Radius.circular(80)),
      child: Drawer(
        width: MediaQuery.of(context).size.width * 0.67,
        backgroundColor: AppColors.white,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: DefaultAppBar(title: ''),
            ),
            UserInfo(),
            SizedBox(height: 26),
            Expanded(child: DrawerIconsList())
          ],
        ),
      ),
    );
  }
}
