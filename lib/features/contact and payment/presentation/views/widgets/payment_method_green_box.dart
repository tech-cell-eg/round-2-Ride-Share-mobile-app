import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_text_styles.dart';
import '../../../../../core/constants/generated/app_images.dart';

class PaymentMethodGreenBox extends StatelessWidget {
  const PaymentMethodGreenBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 17,
      ),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withValues(alpha: 0.1),
        border: Border.all(color: AppColors.primaryColor),
        borderRadius: BorderRadius.circular(4),
      ),
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
                style: AppTextStyles.styleBlack16Medium,
              ),
              Text(
                'Expires: 12/26',
                style: AppTextStyles.styleGrey14Medium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
