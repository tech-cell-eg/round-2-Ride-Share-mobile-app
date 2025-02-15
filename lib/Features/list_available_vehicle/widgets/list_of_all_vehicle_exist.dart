import 'package:flutter/material.dart';
import 'package:ride_share/Features/list_available_vehicle/widgets/available_vehicle_container.dart';

class ListOfAllVehicleExist extends StatelessWidget {
  const ListOfAllVehicleExist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: AvailableVehicleContainer(),
        );
      },
    );
  }
}
