import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/constants/generated/icons.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';

class ArrowBackIcon extends StatelessWidget {
  const ArrowBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop();
      },
      child: Container(
        margin: const EdgeInsets.only(left: AppSizes.screenPadding),
        child: Row(
          children: [
            SvgPicture.asset(AppIcons.arrowLeftIcon, fit: BoxFit.scaleDown),
            const SizedBox(width: 10),
            const Text(
              AppStrings.back,
              style: AppTextStyles.leadingTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
