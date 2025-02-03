import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/constants/app_text_styles.dart';
import '../../../../../core/constants/generated/app_images.dart';
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
            AppImages.imagesDriverEx,
            height: 54,
            width: 59,
          ),
        ),
        SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sergio Ramasis',
              style: AppTextStyles.styleBlack16Medium,
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
        Spacer(),
        Image.asset(
          AppImages.imagesRealRedCar,
          fit: BoxFit.cover,
          height: 93,
        ),
      ],
    );
  }
}
