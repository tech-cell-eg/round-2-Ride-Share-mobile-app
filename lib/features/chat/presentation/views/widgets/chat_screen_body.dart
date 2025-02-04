import 'package:flutter/material.dart';
import 'message_list_view.dart';
import 'message_list_view_item.dart';

class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: MessageListView(),
        ),
        Container(
          width: double.infinity,
        ),
      ],
    );
  }
}
