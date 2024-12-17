import 'package:flutter/material.dart';

class AppBarContainer extends StatelessWidget {
  final Widget child;

  const AppBarContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: const Color(0xff0a0c0c),
        //color: const Color(0xFF141921),
        borderRadius: BorderRadius.circular(17),
        border: Border.all(
            color: Colors.brown.withOpacity(0.1),
            width: 2.0,
        ),
      ),
      child: child,
    );
  }
}
