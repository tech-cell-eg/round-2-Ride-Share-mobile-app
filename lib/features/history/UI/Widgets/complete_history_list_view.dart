import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/features/history/UI/Widgets/history_card.dart';

class CompleteHistoryListView extends StatelessWidget {
  const CompleteHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return HistoryCard(
            title: 'Completed',
            subTitle:'Mustang Shelby GT' ,
            historyState: Text(
              'Done',
              style: AppTextStyles.font12MainColorMedium,
            ),
          );
        });
  }
}