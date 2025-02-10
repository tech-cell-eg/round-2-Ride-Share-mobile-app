import 'package:flutter/material.dart';

import '../../../../../core/constants/generated/images.dart';
import '../../../../../core/widgets/green_box.dart';

class DriverRateBox extends StatelessWidget {
  const DriverRateBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GreenBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mustang Shelby GT',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xFFFBC02D),
                    size: 16,
                  ),
                  Text(
                    '4.9 (531 reviews)',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF888888),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Image.asset(
            AppImages.realRedCar,
            width: 93,
            height: 54,
          ),
        ],
      ),
    );
  }
}
