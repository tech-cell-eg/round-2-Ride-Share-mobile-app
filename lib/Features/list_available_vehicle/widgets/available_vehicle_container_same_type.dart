import 'package:flutter/material.dart';
import 'package:ride_share/Features/list_available_vehicle/widgets/available_vehicle_container_same_type_body.dart';
import 'package:ride_share/Features/vehicle_details/vehicle_details_page.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_constants.dart';

class AvailableVehicleContainerSameType extends StatelessWidget {
  const AvailableVehicleContainerSameType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const VehicleDetailsPage(),
            ));
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.containerBorder),
          borderRadius: BorderRadius.all(
              Radius.circular(AppConstants.containerBorderRediuse)),
          color: AppColors.containerBackgraond,
        ),
        child: AvailableVehicleContainerSameTypeBody(),
      ),
    );
  }
}
