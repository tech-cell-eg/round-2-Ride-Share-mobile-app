import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'send_message_text_field.dart';

class SendMessageBox extends StatefulWidget {
  const SendMessageBox({
    super.key,
  });

  @override
  State<SendMessageBox> createState() => _SendMessageBoxState();
}

class _SendMessageBoxState extends State<SendMessageBox> {
  late TextEditingController sendMessageController;

  @override
  void initState() {
    super.initState();
    sendMessageController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    sendMessageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        bottom: 30,
        start: 16,
        end: 16,
        top: 10,
      ),
      child: Container(
        width: double.infinity,
        color: Colors.transparent,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: const Icon(
                FontAwesomeIcons.circlePlus,
                size: 24,
              ),
            ),
            const SizedBox(width: 7),
            Expanded(
              child: SendMessageTextField(
                sendMessageController: sendMessageController,
              ),
            ),
            const SizedBox(width: 7),
            GestureDetector(
              onTap: () {
                sendMessageController.clear();
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: const Icon(
                FontAwesomeIcons.paperPlane,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
