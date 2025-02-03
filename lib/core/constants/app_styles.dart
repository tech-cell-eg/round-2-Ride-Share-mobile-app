import 'package:flutter/material.dart';

abstract class AppStyles {
  static const TextStyle regular16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color(0xff414141),
    fontFamily: 'Poppins',
  );
  static const TextStyle medium18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Color(0xff2A2A2A),
    fontFamily: 'Poppins',
  );
  static const TextStyle semiBold16 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Color(0xff5A5A5A),
    fontFamily: 'Poppins',
  );
  static const TextStyle medium16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Color(0xff5A5A5A),
    fontFamily: 'Poppins',
  );
}
