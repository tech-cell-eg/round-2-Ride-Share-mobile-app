import 'package:flutter/material.dart';
import 'package:ride_share/core/theme/app_theme.dart';
import 'package:ride_share/features/privacy_policy/privacy_policy_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ride Share',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: PrivacyPolicyScreen(),
    );
  }
}
