import 'package:flutter/material.dart';
import 'calling_bottom_icons_row.dart';
import 'calling_header.dart';

class CallingScreenBody extends StatelessWidget {
  const CallingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Spacer(flex: 2),
          CallingHeader(),
          Spacer(flex: 5),
          CallingBottomIconsRow(),
        ],
      ),
    );
  }
}
