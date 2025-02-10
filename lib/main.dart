import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:ride_share/app.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(),
    ),
  );
}
