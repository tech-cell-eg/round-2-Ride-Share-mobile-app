import 'package:flutter/material.dart';
import 'package:ride_share/features/chat/presentation/views/chat_screen.dart';

import 'core/config/routing/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter().generateRoute,
      initialRoute: ChatScreen.routeName,
      theme: ThemeData(useMaterial3: true),
    );
  }
}
