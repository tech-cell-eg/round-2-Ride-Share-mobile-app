import 'package:flutter/material.dart';
import 'package:ride_share/features/contact%20and%20payment/presentation/views/location_confirm_screen.dart';

import 'core/config/routing/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: LocationConfirmScreen.routeName,
    );
  }
}
