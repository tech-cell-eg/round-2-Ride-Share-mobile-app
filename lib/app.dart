import 'package:flutter/material.dart';
import 'package:ride_share/core/config/routing/app_router.dart';
import 'package:ride_share/core/config/routing/routes.dart';
import 'package:ride_share/core/theme/app_theme.dart';
import 'package:ride_share/features/favourite/presentation/screens/favourite_screen.dart';
import 'package:ride_share/features/contact%20and%20payment/presentation/views/location_confirm_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'core/config/routing/app_router.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ride Share',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
        onGenerateRoute: AppRouter().generateRoute,
        initialRoute: Routes.onBoarding,
      ),

    );
  }
}
