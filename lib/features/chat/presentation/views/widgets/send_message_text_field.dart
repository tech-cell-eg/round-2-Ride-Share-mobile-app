import 'package:flutter/material.dart';
import 'package:ride_share/core/constants/app_strings.dart';

class SendMessageTextField extends StatelessWidget {
  const SendMessageTextField({
    super.key,
    required this.sendMessageController,
  });
  final TextEditingController sendMessageController;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: sendMessageController,
      decoration: const InputDecoration(
        hintText: AppStrings.typeYourMessage,
        contentPadding: EdgeInsets.all(15),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff888888)),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    );
  }
}
