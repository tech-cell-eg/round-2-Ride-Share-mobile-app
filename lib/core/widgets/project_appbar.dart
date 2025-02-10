import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_styles.dart';

class ProjectAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ProjectAppbar({
    super.key,
    this.title,
  });
  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title != null
          ? Text(
              title!,
              style: AppStyles.medium18,
            )
          : const SizedBox(),
      centerTitle: true,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Row(
          children: [
            SizedBox(width: 5),
            Icon(Icons.chevron_left),
            Text(
              "Back",
              style: AppStyles.regular16,
            ),
          ],
        ),
      ),
      leadingWidth: 70,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
