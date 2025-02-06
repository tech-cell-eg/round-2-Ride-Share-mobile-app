import 'package:flutter/material.dart';

import 'message_list_view_item.dart';

class MessageListView extends StatelessWidget {
  const MessageListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      reverse: true,
      itemCount: 5,
      itemBuilder: (context, index) => const MessageListViewItem(
        isOther: true,
        isFirstMessage: true,
        isLastMessage: true,
      ),
    );
  }
}
