import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_strings.dart';

import '../../../../core/widgets/default_app_bar.dart';
import 'widgets/chat_screen_body.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  static const routeName = '/chat';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: AppStrings.chat),
      body: const ChatScreenBody(),
    );
  }
}
