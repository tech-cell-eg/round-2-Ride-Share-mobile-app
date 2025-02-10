import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/shared/dialogs/custom_success_dialog.dart';
import 'package:ride_share/features/contact%20and%20payment/presentation/views/widgets/green_button.dart';

import 'add_rate_bottom_sheet.dart';
import 'driver_rate_box.dart';
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
              onPressed: () {
                customSuccessDialog(
                  context,
                  AppStrings.paymentSuccess,
                  AppStrings.moneySentSuccessfully,
                  AppStrings.pleaseFeedback,
                  () async {
                    await showModalBottomSheet(
                      context: context,
                      builder: (context) => const AddRateBottomSheet(),
                    );
                  },
                  showAmount: true,
                  showDivider: true,
                  amount: 200,
                  showButtonWidget: true,
                  buttomWidgetTitle: AppStrings.howIsYourTrip,
                  bottomWidgetSubTitle: AppStrings.howIsYourTripDescription,
                );
              },
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
