import 'package:coffee_app_ui/presentation/screens/login_screen.dart';
import 'package:coffee_app_ui/presentation/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isShowLogginScreen = true;

  void toggleAuth(){
    isShowLogginScreen = !isShowLogginScreen;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: isShowLogginScreen
            ? LogInScreen(onTap: toggleAuth)
            : SignUpScreen(onTap: toggleAuth)
    );
  }
}