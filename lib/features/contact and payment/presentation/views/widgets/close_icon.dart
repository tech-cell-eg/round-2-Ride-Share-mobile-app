import 'package:flutter/material.dart';

class CloseIcon extends StatelessWidget {
  const CloseIcon({
    super.key,
    required this.onTap,
  });
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Align(
        alignment: Alignment.topRight,
        child: Icon(
          Icons.close,
        ),
      ),
    );
  }
}
