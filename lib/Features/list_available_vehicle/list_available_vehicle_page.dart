import 'package:flutter/material.dart';
import 'package:ride_share/Features/list_available_vehicle/widgets/list_available_vehicle_body.dart';
import 'package:ride_share/core/widgets/project_appbar.dart';

class ListAvailableVehiclePage extends StatelessWidget {
  const ListAvailableVehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProjectAppbar(),
      body: ListAvailableVehicleBody(),
    );
  }
}
