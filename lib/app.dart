import 'package:flutter/material.dart';
import 'package:ride_share/core/config/routing/app_router.dart';
import 'package:ride_share/core/config/routing/routes.dart';
import 'package:ride_share/core/theme/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/features/payment/presentation/views/payment_screen.dart';

import 'core/config/routing/app_router.dart';

import 'features/Auth/change_password_in_settings/change_password_in_settings_screen.dart';

import 'features/Auth/complete_profie/complete_profie_screen.dart';
import 'features/Auth/delete_account/delete_account_screen.dart';
import 'features/Auth/get_user_location/get_user_location_screen.dart';
import 'features/Auth/send_verification/send_verification_screen.dart';
import 'features/Auth/set_new_password/set_new_password_screen.dart';
import 'features/Auth/sign_in/signin_screen.dart';
import 'features/change_language/change_language_screen.dart';
import 'features/welcome_screen/welcome_screen.dart';

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
        initialRoute: PaymentScreen.routeName,
 
      ),
    );
  }
}
