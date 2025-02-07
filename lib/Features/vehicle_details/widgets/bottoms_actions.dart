import 'package:flutter/material.dart';
import 'package:ride_share/core/widgets/custom_border_button.dart';
import 'package:ride_share/core/widgets/custom_fill_button.dart';

class BottomsAction extends StatelessWidget {
  const BottomsAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: CustomBorderButton(
              onTap: () {},
              title: 'Book later',
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: CustomFillButton(
              onTap: () {},
              title: 'Ride Now',
            ),
          )
        ],
      ),
    );
  }
}
