import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_styles.dart';

class ListAvailableVehicleTitlePage extends StatelessWidget {
  const ListAvailableVehicleTitlePage({super.key, this.title, this.subTitle});
  final String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Avaiable cars for ride",
          style: AppStyles.semiBold24,
        ),
        SizedBox(height: 6),
        Text(
          "18 cars found",
          style: AppStyles.medium14,
        )
      ],
    );
  }
}
