import 'package:flutter/material.dart';
import 'package:ride_share/Features/vehicle_details/widgets/bottoms_actions.dart';
import 'package:ride_share/Features/vehicle_details/widgets/vehicle_details_body.dart';
import 'package:ride_share/core/widgets/project_appbar.dart';

class VehicleDetailsPage extends StatelessWidget {
  const VehicleDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: ProjectAppbar(),
        body: VehicleDetailsBody(),
        bottomNavigationBar: BottomsAction());
  }
}
