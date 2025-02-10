import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_strings.dart';

import 'close_icon.dart';
import 'custom_divider.dart';
import 'double_buttons_row.dart';
import 'driver_info_row.dart';
import 'payment_method_green_box.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const defaultPadding = 14.0;
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: defaultPadding),
              child: CloseIcon(onTap: () {}),
            ),
            const SizedBox(height: 10),
            const Text(
              '${AppStrings.yourDriverIsComingIn} 3:35',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            const CustomDivider(),
            const Spacer(),
            const DriverInfoRow(),
            const Spacer(),
            const CustomDivider(),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.paymentMethod,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  r"$220.00",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const PaymentMethodGreenBox(),
            const Spacer(flex: 2),
            const DoubleButtonsRow(),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
