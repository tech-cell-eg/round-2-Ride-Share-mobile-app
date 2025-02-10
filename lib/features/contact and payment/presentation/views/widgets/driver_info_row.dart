import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/constants/generated/images.dart';
import 'driver_info_sub_title_row.dart';

class DriverInfoRow extends StatelessWidget {
  const DriverInfoRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(
            AppImages.driverEx,
            height: 54,
            width: 59,
          ),
        ),
        const SizedBox(width: 5),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sergio Ramasis',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            DriverInfoSubTitleRow(
              title: '800m (5mins away)',
              icon: FontAwesomeIcons.locationDot,
            ),
            DriverInfoSubTitleRow(
              title: '4.9 (531 reviews)',
              icon: Icons.star,
              isReview: true,
            ),
          ],
        ),
        const Spacer(),
        Image.asset(
          AppImages.realRedCar,
          fit: BoxFit.cover,
          height: 93,
        ),
      ],
    );
  }
}
