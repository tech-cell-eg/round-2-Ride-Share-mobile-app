import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/Auth/complete_profie/complete_profie_screen.dart';
import 'features/Auth/send_verification/send_verification_screen.dart';
import 'features/Auth/sign_in/signin_screen.dart';
import 'features/welcome_screen/welcome_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
           
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          
        ),
        home:   SendVerificationScreen( ),
      ),
    );
  }
}

 