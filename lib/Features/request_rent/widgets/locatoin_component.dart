import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_styles.dart';

class LocationComponent extends StatelessWidget {
  const LocationComponent({
    super.key,
    required this.title,
    required this.subTitle,
    required this.iconColor,
    this.destance = "",
  });
  final String title, subTitle;
  final Color iconColor;
  final String destance;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      tileColor: Colors.transparent,
      leading: Icon(Icons.location_on, color: iconColor),
      title: Row(
        children: [
          Text(title, style: AppStyles.medium16),
          const Spacer(),
          Text(destance, style: AppStyles.medium14B),
        ],
      ),
      subtitle: SelectableText(
        subTitle,
        style: AppStyles.regular12,
        maxLines: 2,
      ),
    );
  }
}
