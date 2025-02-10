import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({
    super.key,
    required this.historyState, required this.title, required this.subTitle,
  });

  final Widget historyState;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: AppColors.darkGreen, width: 1),
      ),
      child: ListTile(
        title: Text(
          title,
          style: AppTextStyles.font14BlackMedium,
        ),
        subtitle: Text(
          subTitle,
          style: AppTextStyles.font12Gray89Regular,
        ),
        trailing: historyState,
      ),
    );
  }
}
