import 'package:flutter/material.dart';
import 'package:ride_share/features/home/presentation/widgets/map/map_view_section.dart';
import 'package:ride_share/features/home/presentation/widgets/service_panel/service_panel.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        // --map--
        Positioned(
          top: 0,
          bottom: 0,
          right: 0,
          left: 0,
          child: MapViewSection(),
        ),
        // --rental service and service options--
        Positioned(bottom: 85, right: 0, left: 0, child: ServicePanel()),
      ],
    );
  }
}
