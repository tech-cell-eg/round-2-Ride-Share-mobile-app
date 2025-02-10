import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants/generated/icons.dart';

class BigPhoneCallingTalking extends StatelessWidget {
  const BigPhoneCallingTalking({
    super.key,
    required this.onTap,
    required this.isCalling,
  });

  final Function() onTap;
  final bool isCalling;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: isCalling ? const Color(0xff4CAF51) : const Color(0xffEF5350),
          borderRadius: BorderRadius.circular(50),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: SvgPicture.asset(
            isCalling
                ? AppIcons.iconsCallingPhone
                : AppIcons.iconsCallingPhoneDown,
            height: 30,
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
