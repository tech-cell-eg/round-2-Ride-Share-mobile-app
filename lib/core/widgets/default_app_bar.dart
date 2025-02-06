import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';

import '../constants/app_text_styles.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pop(),
      child: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: const Row(
          children: [
            SizedBox(width: 3),
            Icon(
              Icons.arrow_back_ios_new,
              size: 16,
            ),
            Text(
              AppStrings.back,
              style: AppTextStyles.styleBlack16Regular,
            ),
          ],
        ),
        title: Text(
          title,
          style: AppTextStyles.styleBlack18Medium,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
