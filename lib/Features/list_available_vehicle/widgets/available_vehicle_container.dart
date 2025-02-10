import 'package:flutter/material.dart';
import 'package:ride_share/Features/list_available_vehicle/widgets/available_vehicle_container_body.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_constants.dart';

class AvailableVehicleContainer extends StatelessWidget {
  const AvailableVehicleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.containerBorder),
        borderRadius: const BorderRadius.all(
            Radius.circular(AppConstants.containerBorderRediuse)),
        color: AppColors.containerBackgraond,
      ),
      child: const AvailableVehicleContainerBody(),
    );
  }
}
