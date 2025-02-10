import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';

import 'package:ride_share/features/main/UI/widgets/nav_bar_item.dart';

import '../../../../core/constants/generated/icons.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    required this.selectedIndex,
  });

  final ValueNotifier<int> selectedIndex;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
      child: BottomAppBar(
        clipBehavior: Clip.hardEdge,
        color: AppColors.white,
        child: ValueListenableBuilder<int>(
          valueListenable: selectedIndex,
          builder: (context, index, child) {
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavBarItem(
                    iconPath: AppIcons.house,
                    pageName: AppStrings.home,
                    isSelected: index == 0,
                    onTap: () => selectedIndex.value = 0,
                  ),
                  NavBarItem(
                    iconPath: AppIcons.favs,
                    pageName: AppStrings.favourites,
                    isSelected: index == 1,
                    onTap: () => selectedIndex.value = 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 29,
                    ),
                    child: Text(
                      AppStrings.wallat,
                      style: index == 2
                          ? AppTextStyles.font12MainColorMedium
                          : AppTextStyles.font12Grey41Medium,
                    ),
                  ),
                  NavBarItem(
                    iconPath: AppIcons.offer,
                    pageName: AppStrings.offers,
                    isSelected: index == 3,
                    onTap: () => selectedIndex.value = 3,
                  ),
                  NavBarItem(
                    iconPath: AppIcons.profile,
                    pageName: AppStrings.profile,
                    isSelected: index == 4,
                    onTap: () => selectedIndex.value = 4,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
