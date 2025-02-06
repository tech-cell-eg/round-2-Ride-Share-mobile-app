import 'package:flutter/material.dart';
import 'calling_bottom_icons_row.dart';
import 'calling_header.dart';

class CallingScreenBody extends StatelessWidget {
  const CallingScreenBody({
    super.key,
    required this.isCalling,
  });
  final bool isCalling;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const Spacer(flex: 2),
          CallingTalkingHeader(
            isCalling: isCalling,
          ),
          const Spacer(flex: 5),
          CallingBottomIconsRow(
            isCalling: isCalling,
          ),
        ],
      ),
    );
  }
}
