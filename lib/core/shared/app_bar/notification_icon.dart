import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/generated/icons.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:ride_share/features/notifications/UI/Screens/notifications_screen.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(const NotificationsScreen());
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(right: AppSizes.screenPadding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child:SvgPicture.asset(AppIcons.notificationIcon),
      ),
    );
  }
}