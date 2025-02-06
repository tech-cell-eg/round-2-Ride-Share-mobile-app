import 'package:flutter/material.dart';
import 'package:ride_share/core/config/routing/routes.dart';
import 'package:ride_share/features/calling/presentation/views/calling_screen.dart';
import 'package:ride_share/features/calling/presentation/views/talk_screen.dart';
import 'package:ride_share/features/chat/presentation/views/chat_screen.dart';
import 'package:ride_share/features/contact%20and%20payment/presentation/views/location_confirm_screen.dart';
import 'package:ride_share/features/main/UI/screens/main_screen.dart';
import 'package:ride_share/features/onBoarding/UI/Screens/onBoarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.main:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case LocationConfirmScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LocationConfirmScreen());
      case ChatScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ChatScreen());
      case CallingScreen.routeName:
        return MaterialPageRoute(builder: (_) => const CallingScreen());
      case TalkScreen.routeName:
        return MaterialPageRoute(builder: (_) => const TalkScreen());
    }
    return null;
  }
}
