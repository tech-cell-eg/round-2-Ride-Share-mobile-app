import 'package:flutter/material.dart';
import 'bottom_container.dart';

import 'custom_google_map.dart';


import 'drawer_notifications_icons_row.dart';

class LocationConfirmScreenBody extends StatelessWidget {
  const LocationConfirmScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [

        CustomGoogleMap(),


        DrawerNotificationsIconsRow(),
        BottomContainer(),
      ],
    );
  }
}
