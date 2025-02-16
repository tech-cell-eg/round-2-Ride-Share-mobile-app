import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ride_share/core/config/routing/routes.dart';
import 'package:ride_share/features/authentication/signup/signup_screen.dart';
import 'package:ride_share/features/complain/presentation/screens/complain_screen.dart';
import 'package:ride_share/features/history/UI/Screens/history_screen.dart';
import 'package:ride_share/features/calling/presentation/views/calling_screen.dart';
import 'package:ride_share/features/calling/presentation/views/talk_screen.dart';
import 'package:ride_share/features/chat/presentation/views/chat_screen.dart';
import 'package:ride_share/features/contact%20and%20payment/presentation/views/location_confirm_screen.dart';
import 'package:ride_share/features/navigation/persentation/screens/navigation_screen.dart';
import 'package:ride_share/features/notifications/UI/Screens/notifications_screen.dart';
import 'package:ride_share/features/onboarding/presentation/Screens/onboarding_screen.dart';
import 'package:ride_share/features/payment/presentation/views/payment_screen.dart';

class AppRouter {
  static final Map<String, Widget Function(BuildContext)> _routes = {
    Routes.onboarding.name: (_) => const OnboardingScreen(),
    Routes.signUp.name: (_) => SignupScreen(),
    Routes.navigation.name: (_) => const NavigationScreen(),
    Routes.notification.name: (_) => const NotificationsScreen(),
    Routes.history.name: (_) => const HistoryScreen(),
    Routes.complain.name: (_) => const ComplainScreen(),
    Routes.locationConfirm.name: (_) => const LocationConfirmScreen(),
    Routes.chat.name: (_) => const ChatScreen(),
    Routes.calling.name: (_) => const CallingScreen(),
    Routes.talk.name: (_) => const TalkScreen(),
    Routes.payment.name: (_) => const PaymentScreen(),
  };

  Route? generateRoute(RouteSettings settings) {
    final isIOS = defaultTargetPlatform == TargetPlatform.iOS;
    final pageBuilder = _routes[settings.name];

    if (pageBuilder != null) {
      return isIOS
          ? CupertinoPageRoute(builder: pageBuilder)
          : MaterialPageRoute(builder: pageBuilder);
    }

    return null;
  }
}
