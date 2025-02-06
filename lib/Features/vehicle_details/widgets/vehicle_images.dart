import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/generated/images.dart';

class VehicleImages extends StatelessWidget {
  const VehicleImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: AspectRatio(
            aspectRatio: 269 / 156,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Image.asset(
                  AppImages.imagesCar1,
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.high,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
