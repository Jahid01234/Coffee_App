import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        //splashFactory: NoSplash.splashFactory,// remove the splash color
        padding: const EdgeInsets.all(8),
        fixedSize: const Size.fromWidth(double.maxFinite),
        backgroundColor: Colors.white10.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 15,
          color: Colors.white.withOpacity(0.8),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}