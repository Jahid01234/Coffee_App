import 'package:flutter/material.dart';

class AppBarContainer extends StatelessWidget {
  final Widget child;
  final Color? bgColor;
  final Color? borderColor;

  const AppBarContainer({
    super.key,
    required this.child,
    this.bgColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: bgColor ?? const Color(0xff0a0c0c),
        //color: const Color(0xFF141921),
        borderRadius: BorderRadius.circular(17),
        border: Border.all(
            color: borderColor ?? Colors.brown.withOpacity(0.1),
            width: 2.0,
        ),
      ),
      child: child,
    );
  }
}
