import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/widgets/green_box.dart';

import '../../../../../core/constants/app_colors.dart';

import '../../../../../core/constants/generated/images.dart';

class PaymentMethodGreenBox extends StatelessWidget {
  const PaymentMethodGreenBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GreenBox(
      child: Row(
        children: [
          SvgPicture.asset(
            AppImages.imagesVisaCard,
          ),
          const SizedBox(width: 13),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '**** **** **** 8970',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '${AppStrings.expires} 12/26',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.gray5A,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
