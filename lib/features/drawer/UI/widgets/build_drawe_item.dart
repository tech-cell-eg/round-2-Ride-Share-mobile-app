import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';

class BuildDrawerItem extends StatelessWidget {
  const BuildDrawerItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final String icon;
  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(icon),
      title: Text(title, style: AppTextStyles.font12Grey41Medium),
      onTap: onTap,
    );
  }
}