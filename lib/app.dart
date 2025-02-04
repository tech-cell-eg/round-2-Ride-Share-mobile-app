import 'package:flutter/material.dart';
import 'package:ride_share/core/config/routing/app_router.dart';
import 'package:ride_share/core/config/routing/routes.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/core/constants/app_constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter().generateRoute,
      initialRoute: Routes.onBoarding,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        fontFamily: AppConstants.appFont,
      ),
    );
  }
}
