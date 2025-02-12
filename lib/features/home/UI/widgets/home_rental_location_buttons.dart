import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/constants/generated/icons.dart';

class HomeRentalButtonLocationButtons extends StatelessWidget {
  const HomeRentalButtonLocationButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 172,
            height: 54,
            decoration: BoxDecoration(
              color: AppColors.darkGreen,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: Text(AppStrings.rental,
                    style: AppTextStyles.font16WhiteMedium)),
          ),
        ),
        GestureDetector(
            onTap: () {}, child: SvgPicture.asset(MyIcons.iconsLocationTarhget))
      ],
    );
  }
}
