import 'package:flutter/material.dart';
import 'package:ride_share/Features/list_available_vehicle/list_available_vehicle_same_type_page.dart';
import 'package:ride_share/Features/list_available_vehicle/widgets/custom_border_button.dart';
import 'package:ride_share/Features/list_available_vehicle/widgets/vehicle_information.dart';

class AvailableVehicleContainerBody extends StatelessWidget {
  const AvailableVehicleContainerBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      child: Column(
        children: [
          const VehicleInformation(),
          const SizedBox(height: 24),
          CustomBorderButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListAvailableVehicleSameTypePage(),
                    ));
              },
              title: "View car list")
        ],
      ),
    );
  }
}
