import 'package:flutter/material.dart';

import 'package:ride_share/features/contact%20and%20payment/presentation/views/location_confirm_screen.dart';

import 'package:ride_share/Features/list_transportion/list_transportion_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/core/constants/app_colors.dart';

import 'features/Auth/complete_profie/complete_profie_screen.dart';
import 'features/Auth/send_verification/send_verification_screen.dart';
import 'features/Auth/set_new_password/set_new_password_screen.dart';
import 'features/Auth/sign_in/signin_screen.dart';
import 'features/welcome_screen/welcome_screen.dart';


import 'core/config/routing/app_router.dart';
import 'features/contact and payment/presentation/views/location_confirm_screen.dart';

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
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor),
          useMaterial3: true,
        ),
        onGenerateRoute: AppRouter().generateRoute,
        initialRoute: LocationConfirmScreen.routeName,
      ),
    );
  }
}
