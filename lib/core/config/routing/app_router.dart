import 'package:flutter/material.dart';
import 'package:ride_share/core/config/routing/routes.dart';
import 'package:ride_share/features/login/login_screen.dart';
import 'package:ride_share/features/onBoarding/UI/Screens/onBoarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) =>  OnboardingScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
    return null;
  }
}
