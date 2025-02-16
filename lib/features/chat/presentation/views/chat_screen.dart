import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_strings.dart';

import '../../../../core/widgets/default_app_bar.dart';
import 'widgets/chat_screen_body.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DefaultAppBar(title: AppStrings.chat),
      body: ChatScreenBody(),
    );
  }
}
