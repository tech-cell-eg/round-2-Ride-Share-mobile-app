import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:ride_share/Features/list_transportion/list_transportion_page.dart';
=======
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/Auth/complete_profie/complete_profie_screen.dart';
import 'features/Auth/send_verification/send_verification_screen.dart';
import 'features/Auth/set_new_password/set_new_password_screen.dart';
import 'features/Auth/sign_in/signin_screen.dart';
import 'features/welcome_screen/welcome_screen.dart';
>>>>>>> ecbee85f9e55ebc417a356ead2da47a11eb70472

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTransportionPage();
=======
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
        home:   SetNewPasswordScreen( ),
      ),
    );
>>>>>>> ecbee85f9e55ebc417a356ead2da47a11eb70472
  }
}

 