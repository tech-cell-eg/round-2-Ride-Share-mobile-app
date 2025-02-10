import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/constants/generated/icons.dart';

class PaymentCard extends StatelessWidget {
  final bool isSelected;
  const PaymentCard({super.key, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: AppColors.primaryWalletBorderColor,
      borderRadius: BorderRadius.circular(4),
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(left: 17, top: 12, bottom: 13),
        foregroundDecoration: _foregroundDecoration(),
        decoration: _cardDecoration(),
        child: Row(
          children: [
            Flexible(
              child: SvgPicture.asset(
                MyIcons.visaIcon,
                width: 45,
                height: 35,
              ),
            ),
            const SizedBox(width: AppSizes.spaceInPaymentCard),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '**** **** **** 8970',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.paymentTitleTextStyle,
                  ),
                  Text(
                    'Expires: 12/26',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.paymentSubTitleTextStyle,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration _foregroundDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: isSelected
          ? Colors.transparent
          : AppColors.inActivePaymentColor.withValues(alpha: 0.52),
    );
  }

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: isSelected
          ? AppColors.activePaymentColor
          : AppColors.inActivePaymentColor,
      borderRadius: BorderRadius.circular(4),
      border: Border.all(
        color: AppColors.primaryWalletBorderColor
            .withValues(alpha: isSelected ? 1 : 0.8),
        width: 1.0,
      ),
    );
  }
}
