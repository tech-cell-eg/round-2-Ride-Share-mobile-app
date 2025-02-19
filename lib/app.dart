import 'package:flutter/material.dart';
import 'package:ride_share/core/config/routing/app_router.dart';
import 'package:ride_share/core/config/routing/routes.dart';
import 'package:ride_share/core/theme/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/core/utils/helpers/observers/keyboard/app_focus_handler.dart';
import 'package:ride_share/core/utils/helpers/observers/keyboard/keyboard_dismiss_observer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: AppFocusHandler(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorObservers: [KeyboardDismissObserver()],
          title: 'Ride Share',
          themeMode: ThemeMode.system,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          initialRoute: Routes.onboarding.name,
          onGenerateRoute: AppRouter().generateRoute,
        ),
      ),
    );
  }
}
