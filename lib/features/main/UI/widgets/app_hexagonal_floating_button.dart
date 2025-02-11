import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/constants/app_colors.dart';

import '../../../../core/constants/generated/icons.dart';

class AppHexagonalFloatingButton extends StatelessWidget {
  const AppHexagonalFloatingButton({
    super.key,
    required this.selectedIndex,
  });

  final ValueNotifier<int> selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: 100,
      child: FloatingActionButton(
        backgroundColor: AppColors.mainColor,
        onPressed: () {
          selectedIndex.value = 2;
        },
        shape: const StarBorder.polygon(sides: 6),
        child: Center(
          child: SvgPicture.asset(
            width: 24,
            height: 28,
            AppIcons.wallet,
          ),
        ),
      ),
    );
  }
}
