import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:coffee_app_ui/presentation/screens/login_screen.dart';
import 'package:coffee_app_ui/presentation/widgets/custom_button.dart';
import 'package:coffee_app_ui/presentation/widgets/custom_text_form_field.dart';
import 'package:coffee_app_ui/presentation/widgets/social_media_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SignUpScreen extends StatefulWidget {
  final VoidCallback? onTap;

  const SignUpScreen({
    super.key,
    this.onTap,
  });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _cPasswordController = TextEditingController();

  bool obscureText1 = true;
  bool obscureText2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: SingleChildScrollView(
            child: ZoomIn(
              duration: const Duration(seconds: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 1st:- Sign up image.......
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Lottie.asset("assets/animations/signup_animation.json",height: 200),
                    ),
                  ),
                  const SizedBox(height: 8),

                  // 2nd:- Create your account text.....
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      ColorizeAnimatedText(
                        "Create your account",
                        textStyle: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                        speed: const Duration(seconds: 1),
                        colors: [
                          const Color(0xFF9fe2bf),
                          Colors.deepOrangeAccent,
                          Colors.teal,
                          Colors.pink,
                          Colors.orange,
                          Colors.cyan,
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),

                  // 3rd:- User Text Field....
                  CustomTextFormField(
                    controller: _userNameController,
                    keyboardType: TextInputType.text,
                    hintText: 'User name',
                    icon: Icons.person_outline_outlined,
                  ),
                  const SizedBox(height: 10),

                  CustomTextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.text,
                    hintText: 'Email',
                    icon: Icons.email_outlined,
                  ),
                  const SizedBox(height: 10),

                  CustomTextFormField(
                    obscureText: obscureText1,
                    controller: _passwordController,
                    keyboardType: TextInputType.text,
                    hintText: 'Password',
                    icon: Icons.lock,
                    suffixIcon: IconButton(
                      onPressed: () {
                        obscureText1 = !obscureText1;
                        setState(() {});
                      },
                      icon: Icon(
                        obscureText1 ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                        size: 22,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  CustomTextFormField(
                    obscureText: obscureText2,
                    controller: _cPasswordController,
                    keyboardType: TextInputType.text,
                    hintText: 'Confirm password',
                    icon: Icons.lock,
                    suffixIcon: IconButton(
                      onPressed: () {
                        obscureText2 = !obscureText2;
                        setState(() {});
                      },
                      icon: Icon(
                        obscureText2 ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                        size: 22,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // 4th:- Button.........
                  CustomButton(
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> const LogInScreen(),
                      ),
                      );
                    },
                    title: "Sign Up",
                  ),
                  const SizedBox(height: 10),

                  // 5th:- Already have an account?/Login text.........
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Already have an account? ",
                        style: const TextStyle(fontSize: 15,color: Colors.grey),
                        children: [
                          TextSpan(
                              text: "LogIn",
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.w500
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap =widget.onTap
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // 6th:- Divider.........
                  const Row(
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
                  const SizedBox(height: 20),

                  // 7th:- Social button.........
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SocialMediaButton(
                        label: "Google",
                        icon: Icons.g_mobiledata_outlined,
                        color: Colors.cyan.withOpacity(0.1),
                        iconColor: Colors.grey,
                        textColor: Colors.grey,
                      ),

                      SocialMediaButton(
                        label: "Apple",
                        icon: Icons.apple_outlined,
                        color: Colors.orange.withOpacity(0.1),
                        iconColor: Colors.grey,
                        textColor: Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

