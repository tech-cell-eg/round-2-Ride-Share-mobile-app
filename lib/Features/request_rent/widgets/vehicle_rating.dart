import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_decorations.dart';
import 'package:ride_share/core/constants/app_styles.dart';
import 'package:ride_share/core/constants/generated/images.dart';

class VehicleRating extends StatelessWidget {
  const VehicleRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      width: double.infinity,
      decoration: AppDecorations.dafaultContainer,
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mustang Shelby GT",
                style: AppStyles.medium16,
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  SizedBox(width: 3),
                  Text(
                    "4.9 (531 reviews)",
                    style: AppStyles.medium14,
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Image.asset(AppImages.imagesRealRedCar, width: 93)
        ],
      ),
    );
  }
}
