import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_strings.dart';

import '../../../../../core/constants/generated/images.dart';
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
        height: MediaQuery.of(context).size.height * 0.54,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox.shrink(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 2,
                  color: AppColors.dividerColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18, right: 18),
                  child: CloseIcon(onTap: () {}),
                ),
              ],
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
              child: PaymentMethodGreenBox(
                imagePath: AppImages.visaCard,
                paymentInfo: '**** **** **** 8970',
                paymentExpiry: '26/12',
              ),
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
