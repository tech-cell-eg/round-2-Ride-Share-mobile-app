import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'bottom_container.dart';
import 'close_icon.dart';
import 'custom_divider.dart';
import 'custom_map.dart';
import 'double_buttons_row.dart';
import 'drawer_notifications_icons_row.dart';
import 'driver_info_row.dart';
import 'payment_method_green_box.dart';

class LocationConfirmScreenBody extends StatelessWidget {
  const LocationConfirmScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomMap(),
        DrawerNotificationsIconsRow(),
        BottomContainer(),
      ],
    );
  }
}
