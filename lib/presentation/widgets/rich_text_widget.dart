import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final String text;
  final String? signText;
  final Color? color;
  final Color? signColor;
  final FontWeight? signFontWeight;
  final FontWeight? textFontWeight;
  final double? size;

  const RichTextWidget({
    super.key,
    this.color,
    this.signColor,
    this.signText,
    this.signFontWeight,
    this.textFontWeight,
    this.size,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: signText ?? "\$ ",
        style:  TextStyle(
          fontSize: size ?? 17,
          color: signColor ?? Colors.orange,
          fontWeight: signFontWeight ?? FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: text,
            style: TextStyle(
              color: color ?? Colors.white,
              fontWeight: textFontWeight ?? FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
