import 'package:flutter/material.dart';
import 'package:ride_share/Features/vehicle_details/widgets/specification_component.dart';
import 'package:ride_share/core/constants/app_styles.dart';
import 'package:ride_share/core/constants/generated/icons.dart';

class VehicleDetailesSpecification extends StatelessWidget {
  const VehicleDetailesSpecification({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> specifications = [
      {"icon": MyIcons.iconsMaxPower, "title": "Max power", "value": "10000hp"},
      {"icon": MyIcons.iconsFual, "title": "Fual", "value": "10000hp"},
      {"icon": MyIcons.iconsSpeed, "title": "Max. speed", "value": "10000hp"},
      {"icon": MyIcons.iconsMph, "title": "0-60mph", "value": "10000hp"},
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Specifications",
          style: AppStyles.medium18A5,
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 5,
          children: specifications.map(
            (e) {
              return SpecificationsComponent(specificatoin: e);
            },
          ).toList(),
          // children: [
          //   SpecificationsComponent(),
          //   SpecificationsComponent(),
          //   SpecificationsComponent(),
          //   SpecificationsComponent(),
          // ],
        )
      ],
    );
  }
}
