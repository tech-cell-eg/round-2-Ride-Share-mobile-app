import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:ride_share/features/chat/presentation/views/chat_screen.dart';

import '../../../../../core/constants/app_text_styles.dart';

class GreenButton extends StatelessWidget {
  const GreenButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.pushNamed(ChatScreen.routeName),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(170, 54),
        backgroundColor: const Color(0xff008955),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: const Text(
        AppStrings.message,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
