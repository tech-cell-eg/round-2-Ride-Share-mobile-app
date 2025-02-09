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
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: CloseIcon(onTap: () {}),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '${AppStrings.yourDriverIsComingIn} 3:35',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: CustomDivider(
                color: Color(0xffdddddd),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: DriverInfoRow(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: CustomDivider(
                color: Color(0xffdddddd),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Row(
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
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: PaymentMethodGreenBox(),
            ),
            const SizedBox(height: 32),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: DoubleButtonsRow(),
            ),
          ],
        ),
      ),
    );
  }
}
