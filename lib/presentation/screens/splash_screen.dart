import 'dart:async';
import 'package:coffee_app_ui/presentation/screens/onboarding_screen.dart';
import 'package:coffee_app_ui/presentation/widgets/rich_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
        const Duration(seconds: 3), () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context)=>const OnboardingScreen(),
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         decoration: const BoxDecoration(
           color: Colors.black26,
         ),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset("assets/animations/coffee_animation.json"),
                const RichTextWidget(
                    signText:"Coffee ",
                    text: "App",
                    size: 28,
                ),
              ],
            ),
        ),
      ),
    );
  }
}
