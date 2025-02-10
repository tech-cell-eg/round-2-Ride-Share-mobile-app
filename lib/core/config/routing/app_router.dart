import 'package:flutter/material.dart';
import 'package:ride_share/core/config/routing/routes.dart';
import 'package:ride_share/features/complain/UI/Screens/complain_screen.dart';
import 'package:ride_share/features/drawer/UI/screens/drawer_screen.dart';
import 'package:ride_share/features/history/UI/Screens/history_screen.dart';
import 'package:ride_share/features/main/UI/screens/main_screen.dart';
import 'package:ride_share/features/notifications/UI/Screens/notifications_screen.dart';
import 'package:ride_share/features/onBoarding/UI/Screens/onBoarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.main:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case Routes.notification:
        return MaterialPageRoute(builder: (_) => const NotificationsScreen());
      case Routes.drawer:
        return MaterialPageRoute(builder: (_) => const DrawerScreen());
      case Routes.history:
        return MaterialPageRoute(builder: (_) => const HistoryScreen());
      case Routes.complain:
        return MaterialPageRoute(builder: (_) => const ComplainScreen());
    }  
    return null;
  }
}
