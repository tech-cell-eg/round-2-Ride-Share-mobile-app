import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/utils/helpers/spacing.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.iconPath,
    required this.pageName,
    required this.isSelected,
    required this.onTap,
  });
  final String iconPath;
  final String pageName;
  final bool isSelected;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SvgPicture.asset(
            width: 24,
            height: 24,
            iconPath,
            // ignore: deprecated_member_use
            color: isSelected ? AppColors.mainColor : AppColors.gray41,
          ),
          verticalSpace(5),
          Text(
            pageName,
            style: isSelected
                ? AppTextStyles.font12MainColorMedium
                : AppTextStyles.font12Grey41Medium,
          )
        ],
      ),
    );
  }
}
