import 'package:flutter/material.dart';
import 'package:ride_share/core/widgets/default_app_bar.dart';

import 'widgets/calling_screen_body.dart';

class CallingScreen extends StatelessWidget {
  const CallingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DefaultAppBar(title: ''),
      body: CallingScreenBody(
        isCalling: true,
      ),
    );
  }
}
