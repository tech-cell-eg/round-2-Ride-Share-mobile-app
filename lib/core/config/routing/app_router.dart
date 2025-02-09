import 'package:flutter/material.dart';
import 'package:ride_share/core/config/routing/routes.dart';
import 'package:ride_share/features/main/UI/screens/main_screen.dart';
import 'package:ride_share/features/onBoarding/UI/Screens/onBoarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.main:
        return MaterialPageRoute(builder: (_) => const MainScreen());
    }
    return null;
  }
}
