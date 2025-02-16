import 'package:flutter/material.dart';

import '../../../../core/widgets/default_app_bar.dart';
import 'widgets/calling_screen_body.dart';

class TalkScreen extends StatelessWidget {
  const TalkScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DefaultAppBar(title: ''),
      body: CallingScreenBody(
        isCalling: false,
      ),
    );
  }
}
