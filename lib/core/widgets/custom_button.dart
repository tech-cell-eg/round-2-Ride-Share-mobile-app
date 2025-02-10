import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.height, // height دايناميك
    required this.width, // width دايناميك
    required this.color, // color دايناميك
    required this.borderRadius,
    required this.textStyle,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0,
    this.image, // radius دايناميك
  });

  final void Function() onPressed;
  final String text;

  // القيم الدايناميكية
  final double height;
  final double width;
  final Color color;
  final double borderRadius;
  final TextStyle textStyle;
  final Color borderColor; // لون الحواف
  final double borderWidth; // عرض الحواف
  final Widget? image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(color: borderColor, width: borderWidth),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null) image!,
            if (image != null) const SizedBox(width: 8),
            Text(
              text,
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
