import 'package:flutter/material.dart';
import 'package:ride_share/Features/list_available_vehicle/widgets/available_vehicle_container.dart';

class ListOfAllVehicleExist extends StatelessWidget {
  const ListOfAllVehicleExist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: AvailableVehicleContainer(),
        );
      },
    );
  }
}
