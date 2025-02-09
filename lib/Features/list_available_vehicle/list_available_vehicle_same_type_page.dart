import 'package:flutter/material.dart';
import 'package:ride_share/Features/list_available_vehicle/widgets/list_available_vehicle_same_type_body.dart';
import 'package:ride_share/core/widgets/project_appbar.dart';

class ListAvailableVehicleSameTypePage extends StatelessWidget {
  const ListAvailableVehicleSameTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ProjectAppbar(),
      body: ListAvailableVehicleSameTypeBody(),
    );
  }
}
