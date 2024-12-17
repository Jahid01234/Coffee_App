import 'package:coffee_app_ui/presentation/screens/main_botton_nav_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff000503),
      ),
      home: const MainBottomNavScreen() ,
    );
  }
}