import 'package:flutter/material.dart';
import 'package:ride_share/Features/vehicle_details/widgets/vehicle_feature_component.dart';

class VehicleFeaturesBody extends StatelessWidget {
  const VehicleFeaturesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> features = [
      {"title": "Model", "value": "GT5000"},
      {"title": "Capacity", "value": "760hp"},
      {"title": "Color", "value": "Red"},
      {"title": "Fuel type", "value": "Octane"},
      {"title": "Gear type", "value": "Automatic"},
    ];
    return Column(
      children: features.map(
        (e) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: VehicleFeaturesComponent(
                title: e['title']!, value: e['value']!),
          );
        },
      ).toList(),
    );
  }
}
