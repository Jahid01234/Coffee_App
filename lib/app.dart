import 'package:coffee_app_ui/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          splashFactory: NoSplash.splashFactory, // remove the all splash color from the ui
          scaffoldBackgroundColor: const Color(0xff000503),
      ),
      home: const SplashScreen(),
    );
  }
}