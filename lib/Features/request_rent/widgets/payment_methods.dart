import 'package:flutter/material.dart';
import 'package:ride_share/Features/request_rent/widgets/methods.dart';
import 'package:ride_share/core/constants/app_styles.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Text("Select payment method", style: AppStyles.medium18A5),
        SizedBox(height: 24),
        Methods()
      ],
    );
  }
}
