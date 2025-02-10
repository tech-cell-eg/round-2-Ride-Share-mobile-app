import 'package:flutter/material.dart';
import 'package:ride_share/features/notifications/UI/widgets/notification_item.dart';

class NotificationsListView extends StatelessWidget {
   NotificationsListView({super.key});
   final List<NotificationItem> listOfNotifications = [
    const NotificationItem(isHighlited: true),
    const NotificationItem(isHighlited: false),
    const NotificationItem(isHighlited: true),
    const NotificationItem(isHighlited: false),
    const NotificationItem(isHighlited: false),
    const NotificationItem(isHighlited: true),

   ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: listOfNotifications.length,
        
        itemBuilder: (context, index) {
          return listOfNotifications[index];
        });
  }
}
