import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/generated/images.dart';
import 'package:ride_share/core/widgets/custom_button.dart';
import 'package:ride_share/core/widgets/green_box.dart';
import 'package:ride_share/features/contact%20and%20payment/presentation/views/widgets/custom_divider.dart';
import 'package:ride_share/features/contact%20and%20payment/presentation/views/widgets/green_button.dart';

import '../../../../features/contact and payment/presentation/views/widgets/payment_method_green_box.dart';
import 'driver_rate_box.dart';
import 'info_line_row.dart';
import 'recept_info.dart';
import 'select_payment_method.dart';

class PaymentScreenBody extends StatelessWidget {
  const PaymentScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          const DriverRateBox(),
          const Spacer(),
          const ReceptInfo(),
          const Spacer(),
          const SelectPaymentMethod(),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: GreenButton(
              title: AppStrings.confirmRide,
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
