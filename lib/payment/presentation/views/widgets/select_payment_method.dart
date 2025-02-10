import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/generated/images.dart';
import '../../../../features/contact and payment/presentation/views/widgets/payment_method_green_box.dart';

class SelectPaymentMethod extends StatelessWidget {
  const SelectPaymentMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.selectPaymentMethod,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 16),
        PaymentMethodGreenBox(
          imagePath: AppImages.imagesVisaCard,
          paymentInfo: '**** **** **** 8970',
          paymentExpiry: '26/12',
        ),
        SizedBox(height: 8),
        PaymentMethodGreenBox(
          isFade: true,
          imagePath: AppImages.imagesMasterCard,
          paymentInfo: '**** **** **** 8970',
          paymentExpiry: '26/12',
        ),
        SizedBox(height: 8),
        PaymentMethodGreenBox(
          isFade: true,
          imagePath: AppImages.imagesPaypal,
          paymentInfo: 'mail@mail.com',
          paymentExpiry: '26/12',
        ),
        SizedBox(height: 8),
        PaymentMethodGreenBox(
          isFade: true,
          imagePath: AppImages.imagesCash,
          paymentInfo: 'Cash',
          paymentExpiry: '26/12',
        ),
      ],
    );
  }
}
