import 'package:flutter/material.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/core/constants/app_colors.dart';
import 'package:ride_share/payment/presentation/views/payment_screen.dart';

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
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor),
          useMaterial3: true,
        ),
        onGenerateRoute: AppRouter().generateRoute,
        initialRoute: PaymentScreen.routeName,
      ),
    );
  }
}
