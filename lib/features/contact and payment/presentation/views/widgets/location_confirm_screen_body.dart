import 'package:flutter/material.dart';
import 'custom_map.dart';
import 'drawer_notifications_icons_row.dart';

class LocationConfirmScreenBody extends StatelessWidget {
  const LocationConfirmScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomMap(),
        DrawerNotificationsIconsRow(),
      ],
    );
  }
}
