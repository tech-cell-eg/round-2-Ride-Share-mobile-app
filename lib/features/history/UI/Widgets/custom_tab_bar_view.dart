import 'package:flutter/material.dart';
import 'package:ride_share/features/history/UI/Widgets/canceld_history_list_view.dart';
import 'package:ride_share/features/history/UI/Widgets/complete_history_list_view.dart';
import 'package:ride_share/features/history/UI/Widgets/upcoming_history_list_view.dart';

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBarView(children: [
      UpcomingHistoryListView(),
      CompleteHistoryListView(),
      CanceldHistoryListView(),
    ]);
  }
}
