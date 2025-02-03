import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_styles.dart';

class ListTransportAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const ListTransportAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "select transport",
        style: AppStyles.medium18,
      ),
      centerTitle: true,
      leading: InkWell(
        onTap: () {},
        child: Row(
          children: [
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
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
