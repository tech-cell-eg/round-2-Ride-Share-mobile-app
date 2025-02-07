import 'package:flutter/material.dart';
import 'package:ride_share/Features/vehicle_details/widgets/specification_component.dart';
import 'package:ride_share/core/constants/app_styles.dart';

class VehicleDetailesSpecification extends StatelessWidget {
  const VehicleDetailesSpecification({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Specifications",
          style: AppStyles.medium18A5,
        ),
        SizedBox(height: 15),
        Row(
          spacing: 5,
          children: [
            SpecificationsComponent(),
            SpecificationsComponent(),
            SpecificationsComponent(),
            SpecificationsComponent(),
          ],
        )
      ],
    );
  }
}
