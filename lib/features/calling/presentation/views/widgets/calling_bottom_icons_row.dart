import 'package:flutter/material.dart';

import '../../../../../core/constants/generated/icons.dart';
import 'calling_icon_circle.dart';
import 'big_phone_calling_talking.dart';

class CallingBottomIconsRow extends StatelessWidget {
  const CallingBottomIconsRow({
    super.key,
    required this.isCalling,
  });
  final bool isCalling;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // camera icon
          CallingIconCircle(
            iconPath: AppIcons.callingCamsvg,
            onTap: () {},
          ),
          // mic icon
          CallingIconCircle(
            iconPath: AppIcons.iconsCallingCamsvg,
            onTap: () {},
          ),
          // phone icon
          BigPhoneCallingTalking(
            isCalling: isCalling,
            onTap: () {},
          ),
          // video icon
          CallingIconCircle(
            iconPath: AppIcons.callingVid,
            onTap: () {},
          ),
          // dots icon
          CallingIconCircle(
            iconPath: AppIcons.callingPhoneDown,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
