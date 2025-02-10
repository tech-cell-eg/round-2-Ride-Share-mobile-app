import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/widgets/green_box.dart';

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
    return Opacity(
      opacity: isFade ? 0.5 : 1,
      child: GreenBox(
        child: Row(
          children: [
            SvgPicture.asset(
              imagePath,
            ),
            const SizedBox(width: 13),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  paymentInfo,
                  style: const TextStyle(
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
      ),
    );
  }
}
