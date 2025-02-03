import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/constants/generated/app_images.dart';
import 'custom_map.dart';
import 'drawer_notifications_icons_row.dart';
import 'driver_info_row.dart';

class LocationConfirmScreenBody extends StatelessWidget {
  const LocationConfirmScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomMap(),
        DrawerNotificationsIconsRow(),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 395,
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
                  padding: const EdgeInsets.all(9.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.close,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Your driver is coming in 3:35',
                      style: AppTextStyles.styleBlack16Medium,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Divider(
                    thickness: 1,
                    color: Color(0xffdddddd),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.asset(
                          AppImages.imagesDriverEx,
                          height: 54,
                          width: 59,
                        ),
                      ),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sergio Ramasis',
                            style: AppTextStyles.styleBlack16Medium,
                          ),
                          DriverInfoRow(
                            title: '800m (5mins away)',
                            icon: FontAwesomeIcons.locationDot,
                          ),
                          DriverInfoRow(
                            title: '4.9 (531 reviews)',
                            icon: Icons.star,
                            isReview: true,
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        AppImages.imagesRealRedCar,
                        fit: BoxFit.cover,
                        height: 93,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
