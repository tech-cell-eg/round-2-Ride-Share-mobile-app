import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_sizes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.centerTitle = true,
  });
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppSizes.screenPadding),
      child: AppBar(
        centerTitle: centerTitle,
        title: title,
        automaticallyImplyLeading: false,
        leading: leading,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
