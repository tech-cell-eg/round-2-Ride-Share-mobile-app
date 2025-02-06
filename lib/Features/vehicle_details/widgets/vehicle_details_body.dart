import 'package:flutter/material.dart';
import 'package:ride_share/Features/vehicle_details/widgets/vehicle_images.dart';
import 'package:ride_share/core/widgets/custom_title_page.dart';

class VehicleDetailsBody extends StatelessWidget {
  const VehicleDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          SizedBox(height: 5),
          CustomTitlePage(
              title: "Mustang Shelby GT", subTitle: "4.9 (531 reviews)"),
          VehicleImages()
        ],
      ),
    );
  }
}
