import 'package:flutter/material.dart';
import 'package:ride_share/features/contact%20and%20payment/presentation/views/widgets/green_button.dart';

import 'white_button.dart';

class DoubleButtonsRow extends StatelessWidget {
  const DoubleButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: WhiteButton(),
        ),
        SizedBox(width: 19),
        Expanded(
          child: GreenButton(),
        ),
      ],
    );
  }
}
