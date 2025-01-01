import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final String text;
  final String? signText;
  final Color? color;

  const RichTextWidget({
    super.key,
    this.color,
    this.signText,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: signText ?? "\$ ",
        style: const TextStyle(
          fontSize: 17,
          color: Colors.orange,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: text,
            style: TextStyle(
              color: color ?? Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
