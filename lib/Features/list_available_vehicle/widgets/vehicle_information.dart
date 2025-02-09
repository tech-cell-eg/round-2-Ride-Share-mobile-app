import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_styles.dart';
import 'package:ride_share/core/constants/generated/images.dart';

class VehicleInformation extends StatelessWidget {
  const VehicleInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "BMW Cabrio",
              style: AppStyles.medium16,
            ),
            Text(
              "Automatic | 3 seats | Octane",
              style: AppStyles.medium12,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 11,
                ),
                Text(
                  " 800m (5mins away)",
                  style: AppStyles.medium12B,
                )
              ],
            )
          ],
        ),
        const SizedBox(width: 29),
        Flexible(
            child: Image.asset(
          AppImages.imagesImage6,
        )),
      ],
    );
  }
}
