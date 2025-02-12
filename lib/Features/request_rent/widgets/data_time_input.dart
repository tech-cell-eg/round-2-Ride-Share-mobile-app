import 'package:flutter/material.dart';
import 'package:ride_share/Features/request_rent/widgets/custom_input_text.dart';

class DateTimeInput extends StatelessWidget {
  const DateTimeInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 16),
        CustomInputText(hint: "Date"),
        SizedBox(height: 16),
        CustomInputText(hint: "Time"),
      ],
    );
  }
}
