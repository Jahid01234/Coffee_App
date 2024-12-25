import 'package:coffee_app_ui/presentation/screens/auth_screen.dart';
import 'package:coffee_app_ui/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.topCenter,
              child: Image.asset("assets/images/onboarding_bg.png"),
          ),

          // Content Overlay
          Positioned(
            top:450,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Color(0xff050505),
                    Color(0xff050505),
                    Color(0xff050505),
                    Color(0xff050505),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    // Title..........
                    const SizedBox(height: 35),
                    const Text(
                      'Fall in Love with\nCoffee in Blissful\nDelight!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Subtitle.........
                    const Text(
                      "Welcome to our cozy coffee corner, where\nevery cup is a delightful for you.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Get Started Button...........
                    CustomElevatedButton(
                        title: "Get Started",
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder:(context)=> const AuthScreen(),
                            ),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

