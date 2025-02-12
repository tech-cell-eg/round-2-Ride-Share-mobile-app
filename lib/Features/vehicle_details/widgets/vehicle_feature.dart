import 'package:flutter/material.dart';
import 'package:ride_share/Features/vehicle_details/widgets/vehicle_features_body.dart';
import 'package:ride_share/core/constants/app_styles.dart';

class VehicleFeatures extends StatelessWidget {
  const VehicleFeatures({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Text("Car features", style: AppStyles.medium18A5),
        SizedBox(height: 16),
        VehicleFeaturesBody()
      ],
    );
  }
}
