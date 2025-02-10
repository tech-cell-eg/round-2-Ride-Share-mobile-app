import 'package:flutter/material.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';


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
              'Back',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
