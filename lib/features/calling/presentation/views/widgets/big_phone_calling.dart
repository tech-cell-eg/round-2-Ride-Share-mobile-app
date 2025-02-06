import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants/generated/icons.dart';

class BigPhoneCalling extends StatelessWidget {
  const BigPhoneCalling({
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
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: const Color(0xff4CAF51),
          borderRadius: BorderRadius.circular(50),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: SvgPicture.asset(
            iconPath,
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
