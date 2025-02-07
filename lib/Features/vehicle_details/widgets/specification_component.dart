import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_constants.dart';
import 'package:ride_share/core/constants/app_styles.dart';
import 'package:ride_share/core/constants/generated/icons.dart';

class SpecificationsComponent extends StatelessWidget {
  const SpecificationsComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: AppColors.containerBackgraond,
          border: Border.all(color: AppColors.containerBorder),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppConstants.containerBorderRediuse),
          )),
      child: Column(
        children: [
          SvgPicture.asset(MyIcons.iconsMaxPower),
          const SizedBox(height: 3),
          const Text(
            "Max. power",
            style: AppStyles.medium10,
          ),
          const Text(
            "2500hp",
            style: AppStyles.regular8,
          )
        ],
      ),
    );
  }
}
