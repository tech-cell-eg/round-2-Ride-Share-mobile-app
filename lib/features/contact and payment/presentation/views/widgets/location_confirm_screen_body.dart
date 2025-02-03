import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/constants/generated/app_images.dart';
import 'close_icon.dart';
import 'custom_divider.dart';
import 'custom_map.dart';
import 'double_buttons_row.dart';
import 'drawer_notifications_icons_row.dart';
import 'driver_info_row.dart';
import 'payment_method_green_box.dart';

class LocationConfirmScreenBody extends StatelessWidget {
  const LocationConfirmScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    const defaultPadding = 14.0;

    return Stack(
      children: [
        CustomMap(),
        DrawerNotificationsIconsRow(),
        Align(
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
                SizedBox(height: 10),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Your driver is coming in 3:35',
                      style: AppTextStyles.styleBlack16Medium,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: CustomDivider(),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: DriverInfoRow(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: CustomDivider(),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payment method',
                        style: AppTextStyles.styleBlack16Medium,
                      ),
                      Text(
                        r"$220.00",
                        style: AppTextStyles.styleBlack16Medium
                            .copyWith(fontSize: 28),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: PaymentMethodGreenBox(),
                ),
                SizedBox(height: 32),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: DoubleButtonsRow(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
