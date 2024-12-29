import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String hintText;
  final IconData icon;
  final Widget? suffixIcon;
  final bool? obscureText;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.hintText,
    required this.icon,
    this.suffixIcon,
    this.obscureText,
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white10.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: TextFormField(
          obscureText: obscureText ?? false,
          controller: controller,
          keyboardType: keyboardType,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          cursorColor: Colors.grey,
          textAlign: TextAlign.start,
          style: const TextStyle(color: Colors.white),
          decoration:  InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.grey),
              border:InputBorder.none,
              prefixIcon: Icon(
                icon,
                size: 20,
                color: Colors.grey,
              ),
              suffixIcon: suffixIcon,
          ),
        ),
      ),
    );
  }
}