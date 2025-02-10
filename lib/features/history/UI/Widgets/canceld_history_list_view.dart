import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/features/history/UI/Widgets/history_card.dart';

class CanceldHistoryListView extends StatelessWidget {
  const CanceldHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return HistoryCard(
            title: 'Canceld',
            subTitle: 'Mustang Shelby GT',
            historyState: Text(
              'Canceld',
              style: AppTextStyles.font12RedMedium,
            ),
          );
        });
  }
}