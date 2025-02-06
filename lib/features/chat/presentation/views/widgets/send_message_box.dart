import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SendMessageBox extends StatelessWidget {
  const SendMessageBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      color: Colors.transparent,
      child: Row(
        children: [
          GestureDetector(
            child: const Icon(
              FontAwesomeIcons.circlePlus,
            ),
          ),
          const Expanded(child: TextField()),
        ],
      ),
    );
  }
}
