import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_text_styles.dart';
import 'package:ride_share/core/widgets/default_app_bar.dart';
import 'package:ride_share/features/notifications/UI/widgets/notifications_List_view.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DefaultAppBar(title: 'Notification'),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text('Today', style: AppTextStyles.font16BlackMedium),
          ),
          Expanded(child: NotificationsListView()),
        ],
      ),
    );
  }
}
