import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/features/history/UI/Widgets/history_card.dart';

class UpcomingHistoryListView extends StatelessWidget {
  const UpcomingHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return HistoryCard(
            title: 'Upcoming',
            subTitle: 'Mustang Shelby GT',
            historyState: Text(
              
              'Today At 1:30 PM',
              style: AppTextStyles.font12Grey41Medium,
            ),
          );
        });
  }
}
