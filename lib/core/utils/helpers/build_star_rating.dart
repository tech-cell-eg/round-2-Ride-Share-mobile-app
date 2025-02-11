import 'package:flutter/material.dart';

Widget buildStarRating(double rating) {
  List<Widget> stars = [];
  for (int i = 1; i <= 5; i++) {
    if (i <= rating) {
      stars.add(const Icon(Icons.star, color: Colors.amber)); // نجمة مملوءة
    } else if (i - 0.5 == rating) {
      stars.add(
          const Icon(Icons.star_half, color: Colors.amber)); // نجمة نصف مملوءة
    } else {
      stars.add(
          const Icon(Icons.star_border, color: Colors.amber)); // نجمة فارغة
    }
  }
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: stars,
  );
}
