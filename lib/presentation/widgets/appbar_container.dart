import 'package:flutter/material.dart';

class AppBarContainer extends StatelessWidget {
  final Widget child;
  final Color? bgColor;
  final Color? borderColor;
  final BorderRadius? borderRadius;

  const AppBarContainer({
    super.key,
    this.bgColor,
    this.borderColor,
    this.borderRadius,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: bgColor ?? const Color(0xff0a0c0c),
        //color: const Color(0xFF141921),
        borderRadius: borderRadius ?? BorderRadius.circular(17),
        border: Border.all(
            color: borderColor ?? Colors.brown.withOpacity(0.1),
            width: 2.0,
        ),
      ),
      child: child,
    );
  }
}
