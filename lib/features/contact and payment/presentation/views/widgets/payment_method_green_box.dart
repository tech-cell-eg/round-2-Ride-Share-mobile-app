import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/generated/images.dart';

import '../../../../../core/constants/app_colors.dart';

class PaymentMethodGreenBox extends StatelessWidget {
  const PaymentMethodGreenBox({
    super.key,
    required this.imagePath,
    required this.paymentInfo,
    required this.paymentExpiry,
    this.isFade = false,
  });
  final String imagePath, paymentInfo, paymentExpiry;
  final bool isFade;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 17,
      ),
      decoration: BoxDecoration(
        color: AppColors.mainColor.withValues(alpha: 0.1),
        border: Border.all(color: AppColors.mainColor),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            AppImages.imagesVisaCard,
          ),
          const SizedBox(width: 13),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '**** **** **** 8970',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '${AppStrings.expires} $paymentExpiry',
                style: const TextStyle(
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
