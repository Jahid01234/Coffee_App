import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:coffee_app_ui/presentation/screens/main_botton_nav_screen.dart';
import 'package:coffee_app_ui/presentation/widgets/custom_button.dart';
import 'package:coffee_app_ui/presentation/widgets/custom_text_form_field.dart';
import 'package:coffee_app_ui/presentation/widgets/social_media_button.dart';
import 'package:flutter/gestures.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LogInScreen extends StatefulWidget {
  final VoidCallback? onTap;

  const LogInScreen({
    super.key,
    this.onTap,
  });

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1st:- Sign up image.......
                FadeInDown(
                  duration: const Duration(milliseconds: 500),
                  child: Center(
                    child: Lottie.asset("assets/animations/login_animation.json",height: 200),
                  ),
                ),
                const SizedBox(height: 10),

                // 2nd:- Create your account text.....
                FadeInLeft(
                  duration: const Duration(milliseconds: 500),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      ColorizeAnimatedText(
                        "Login your account",
                        textStyle: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                        speed: const Duration(seconds: 1),
                        colors: [
                          Colors.cyan,
                          Colors.deepOrangeAccent,
                          Colors.teal,
                          Colors.pink,
                          Colors.cyan,
                          Colors.orange,
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),

                // 3rd:- User Text Field....
                FadeInRight(
                  duration: const Duration(milliseconds: 500),
                  child: CustomTextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.text,
                    hintText: 'Email',
                    icon: Icons.email_outlined,
                  ),
                ),
                const SizedBox(height: 10),

                FadeInLeft(
                  duration: const Duration(milliseconds: 500),
                  child: CustomTextFormField(
                    obscureText: obscureText,
                    controller: _passwordController,
                    keyboardType: TextInputType.text,
                    hintText: 'Password',
                    icon: Icons.lock,
                    suffixIcon: IconButton(
                      onPressed: () {
                        obscureText = !obscureText;
                        setState(() {});
                      },
                      icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                        size: 22,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // 4th:- Button.........
                FadeInUp(
                  duration: const Duration(milliseconds: 500),
                  child: CustomButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> const MainBottomNavScreen(),
                       ),
                      );
                    },
                    title: "Log In",
                  ),
                ),
                const SizedBox(height: 10),

                // 5th:- Already have an account?/Login text.........
                FadeInRight(
                  duration: const Duration(milliseconds: 500),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: const TextStyle(fontSize: 15,color: Colors.grey),
                        children: [
                          TextSpan(
                            text: "SignUp",
                            style: const TextStyle(
                                fontSize: 15,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w500
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = widget.onTap,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // 6th:- Divider.........
                FadeInLeft(
                  duration: const Duration(milliseconds: 500),
                  child: const Row(
                    children: [
                      Expanded(
                        child: Divider(color: Colors.grey),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2,right: 2),
                        child: Text(
                          "Or continue with",
                          style: TextStyle(fontSize: 15,color: Colors.white70),
                        ),
                      ),
                      Expanded(
                        child: Divider(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // 7th:- Social button.........
                FadeInUp(
                  duration: const Duration(milliseconds: 500),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SocialMediaButton(
                        label: "Google",
                        icon: Icons.g_mobiledata_outlined,
                        color: Colors.lightBlue.withOpacity(0.1),
                        iconColor: Colors.grey,
                        iconSize: 31,
                        textColor: Colors.grey,
                      ),

                      SocialMediaButton(
                        label: "Apple",
                        icon: Icons.apple_outlined,
                        color: Colors.green.withOpacity(0.1),
                        iconColor: Colors.grey,
                        textColor: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

