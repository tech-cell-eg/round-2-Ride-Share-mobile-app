import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_constants.dart';
import 'package:ride_share/core/constants/app_styles.dart';

class SpecificationsComponent extends StatelessWidget {
  const SpecificationsComponent({
    super.key,
    required this.specificatoin,
  });
  final Map<String, dynamic> specificatoin;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);
    return Container(
      width: s.width * 0.21,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: AppColors.containerBackgraond,
          border: Border.all(color: AppColors.containerBorder),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppConstants.containerBorderRediuse),
          )),
      child: AspectRatio(
        aspectRatio: 1,
        child: Column(
          children: [
            SvgPicture.asset(
              specificatoin['icon'],
            ),
            const SizedBox(height: 3),
            Flexible(
              child: Text(
                specificatoin['title'],
                style: AppStyles.medium9,
              ),
            ),
            Text(
              specificatoin['value'],
              style: AppStyles.regular8,
            )
          ],
        ),
      ),
    );
  }
}
