import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_sizes.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/generated/icons.dart';

class CustomFavouriteAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomFavouriteAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppSizes.screenPadding),
      child: AppBar(
        centerTitle: true,
        title: const Text(AppStrings.favourite),
        automaticallyImplyLeading: false,
        leading: Container(
          margin: const EdgeInsets.only(left: AppSizes.screenPadding),
          decoration: _leadingDecoration(),
          child: IconButton(
            style: _menuButtonStyle(),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: SvgPicture.asset(MyIcons.iconsMenuIcon),
            onPressed: () {},
          ),
        ),
      ),
    );
  }

  BoxDecoration _leadingDecoration() {
    return BoxDecoration(
      color: AppColors.menubgColor,
      borderRadius: BorderRadius.circular(AppSizes.menuIconRadius),
    );
  }

  ButtonStyle _menuButtonStyle() {
    return ButtonStyle(
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.menuIconRadius),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
