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
            iconPath: MyIcons.callingCamsvg,
            onTap: () {},
          ),
          // mic icon
          CallingIconCircle(
            iconPath: MyIcons.iconsCallingCamsvg,
            onTap: () {},
          ),
          // phone icon
          BigPhoneCallingTalking(
            isCalling: isCalling,
            onTap: () {},
          ),
          // video icon
          CallingIconCircle(
            iconPath: MyIcons.callingVid,
            onTap: () {},
          ),
          // dots icon
          CallingIconCircle(
            iconPath: MyIcons.callingPhoneDown,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
