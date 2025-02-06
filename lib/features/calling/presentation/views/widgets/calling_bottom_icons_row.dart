import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/generated/icons.dart';

class CallingBottomIconsRow extends StatelessWidget {
  const CallingBottomIconsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          InkWell(
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: AppColors.callingIconsGreen.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(50),
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: SvgPicture.asset(
                  AppIcons.iconsCallingCamsvg,
                  height: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
