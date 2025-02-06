import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants/app_colors.dart';

class CallingIconCircle extends StatelessWidget {
  const CallingIconCircle({
    super.key,
    required this.iconPath,
    required this.onTap,
  });
  final String iconPath;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
            iconPath,
            height: 20,
          ),
        ),
      ),
    );
  }
}
