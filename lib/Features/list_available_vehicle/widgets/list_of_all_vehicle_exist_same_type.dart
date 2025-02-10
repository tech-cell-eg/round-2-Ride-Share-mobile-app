import 'package:flutter/material.dart';
import 'package:ride_share/Features/list_available_vehicle/widgets/available_vehicle_container_same_type.dart';

class ListOfAllVehicleExistSameType extends StatelessWidget {
  const ListOfAllVehicleExistSameType({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: AvailableVehicleContainerSameType(),
        );
      },
    );
  }
}
