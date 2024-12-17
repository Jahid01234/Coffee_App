import 'package:flutter/material.dart';


class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final Color? bgColor;

  const CustomElevatedButton({
    super.key,
    this.bgColor,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(12),
        backgroundColor: bgColor ?? Colors.orange,
        fixedSize: const Size.fromWidth(double.maxFinite),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onTap,
      child:  Text(
        title,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}