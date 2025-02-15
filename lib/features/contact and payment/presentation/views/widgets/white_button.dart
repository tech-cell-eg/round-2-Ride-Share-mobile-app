import 'package:flutter/material.dart';
import 'package:ride_share/core/config/routing/routes.dart';
import 'package:ride_share/core/constants/app_strings.dart';
import 'package:ride_share/core/utils/helpers/extensions/navigation_extension.dart';

class WhiteButton extends StatelessWidget {
  const WhiteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.pushNamed(Routes.calling.name),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(170, 54),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: Color(0xff008955)),
        ),
      ),
      child: const Text(
        AppStrings.call,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color(0xff008955),
        ),
      ),
    );
  }
}
