import 'dart:async';
import 'package:coffee_app_ui/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2), () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         decoration: const BoxDecoration(
           image: DecorationImage(
               image: AssetImage("assets/images/espresso.jpeg"),
               fit: BoxFit.cover,
           ),
         ),
      ),
    );
  }
}
