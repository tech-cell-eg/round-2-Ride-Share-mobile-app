import 'package:flutter/material.dart';
import 'package:ride_share/core/widgets/custom_border_button.dart';
import 'package:ride_share/core/widgets/custom_fill_button.dart';
import 'package:ride_share/Features/list_available_vehicle/widgets/vehicle_information.dart';

class AvailableVehicleContainerSameTypeBody extends StatelessWidget {
  const AvailableVehicleContainerSameTypeBody({
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
          Row(
            children: [
              Expanded(
                  child: CustomBorderButton(onTap: () {}, title: "Book later")),
              const SizedBox(width: 7),
              Expanded(
                  child: CustomFillButton(onTap: () {}, title: "Ride Now")),
            ],
          )
        ],
      ),
    );
  }
}
