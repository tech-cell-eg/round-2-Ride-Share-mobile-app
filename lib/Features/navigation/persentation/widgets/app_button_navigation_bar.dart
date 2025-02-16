import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import '../../../../core/constants/generated/icons.dart';
import 'nav_bar_item.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final ValueNotifier<int> selectedIndex;
  
  const AppBottomNavigationBar({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
      child: BottomAppBar(
        clipBehavior: Clip.hardEdge,
        color: isDark ? const Color.fromARGB(255, 20, 20, 20) : Colors.white,
        child: ValueListenableBuilder<int>(
          valueListenable: selectedIndex,
          builder: (context, index, child) {
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildNavBarItem(AppIcons.house, AppStrings.home, 0),
                  _buildNavBarItem(AppIcons.favs, AppStrings.favourites, 1),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 29),
                        child: Text(
                          AppStrings.wallat,
                          style: index == 2
                              ? AppTextStyles.font12MainColorMedium
                              : AppTextStyles.font12Grey41Medium,
                        ),
                      ),
                    ],
                  ),
                  _buildNavBarItem(AppIcons.offer, AppStrings.offers, 3),
                  _buildNavBarItem(AppIcons.profile, AppStrings.profile, 4),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildNavBarItem(String icon, String label, int index) {
    return ValueListenableBuilder<int>(
      valueListenable: selectedIndex,
      builder: (context, currentIndex, child) {
        return NavBarItem(
          iconPath: icon,
          pageName: label,
          isSelected: currentIndex == index,
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus(); // close keyboard 
            selectedIndex.value = index;
          },
        );
      },
    );
  }
}
