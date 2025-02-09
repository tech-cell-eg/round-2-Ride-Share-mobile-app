import 'package:flutter/material.dart';
import 'message_list_view.dart';
import 'send_message_box.dart';

class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: MessageListView(),
        ),
        SendMessageBox(),
      ],
    );
  }
}
