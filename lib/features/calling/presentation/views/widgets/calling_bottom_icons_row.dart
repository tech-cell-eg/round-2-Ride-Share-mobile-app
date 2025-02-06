import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/generated/icons.dart';
import 'calling_icon_circle.dart';
import 'big_phone_calling.dart';

class CallingBottomIconsRow extends StatelessWidget {
  const CallingBottomIconsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // camera icon
          CallingIconCircle(
            iconPath: AppIcons.iconsCallingCamsvg,
            onTap: () {},
          ),
          // mic icon
          CallingIconCircle(
            iconPath: AppIcons.iconsCallingMic,
            onTap: () {},
          ),
          // phone icon
          BigPhoneCalling(
            iconPath: AppIcons.iconsCallingPhone,
            onTap: () {},
          ),
          // video icon
          CallingIconCircle(
            iconPath: AppIcons.iconsCallingVid,
            onTap: () {},
          ),
          // dots icon
          CallingIconCircle(
            iconPath: AppIcons.iconsCallingDots,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
