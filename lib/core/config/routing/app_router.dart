import 'package:flutter/material.dart';
import 'package:ride_share/features/chat/presentation/views/chat_screen.dart';
import 'package:ride_share/features/contact%20and%20payment/presentation/views/location_confirm_screen.dart';

class AppRouter {
  AppRouter._();

  static Route onGenerateRoute(RouteSettings settings) {
    final argument = settings.arguments;
    switch (settings.name) {
      case LocationConfirmScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LocationConfirmScreen());
      case ChatScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ChatScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('No route defined')),
          ),
        );
    }
  }
}
