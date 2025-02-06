import 'package:flutter/material.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/generated/images.dart';

class CallingTalkingHeader extends StatelessWidget {
  const CallingTalkingHeader({
    super.key,
    required this.isCalling,
  });
  final bool isCalling;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.imagesUserPic,
          width: 100,
          height: 100,
        ),
        const SizedBox(height: 21),
        const Text(
          'Sergio Ramasis',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        isCalling
            ? const Text(
                AppStrings.calling,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffB8B8B8),
                ),
              )
            : const Text(
                '01:23',
                style: TextStyle(
                  fontSize: 34,
                ),
              ),
      ],
    );
  }
}
