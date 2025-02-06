import 'package:flutter/material.dart';

import 'core/config/routing/app_router.dart';
import 'features/contact and payment/presentation/views/location_confirm_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter().generateRoute,
      initialRoute: LocationConfirmScreen.routeName,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
