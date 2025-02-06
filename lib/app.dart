import 'package:flutter/material.dart';
import 'package:ride_share/features/calling/presentation/views/calling_screen.dart';

import 'core/config/routing/app_router.dart';
import 'features/contact and payment/presentation/views/location_confirm_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter().generateRoute,
      initialRoute: CallingScreen.routeName,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
