import 'package:flutter/material.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pop(),
      child: const Row(
        children: [
          SizedBox(width: 3),
          Icon(
            Icons.arrow_back_ios_new,
            size: 16,
          ),
          Text(
            'Back',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
