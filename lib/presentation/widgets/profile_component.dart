import 'package:flutter/material.dart';


class ProfileComponent extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onPressed;

  const ProfileComponent({
    super.key,
    required this.icon,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 8),
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        boxShadow:  [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 1,
              spreadRadius: 0,
              offset: const Offset(0,0)
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 1st row
          Row(
            children: [
              Icon(
                icon,
                color: Colors.grey,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                title,style: const TextStyle(
                color: Color(0xff296e48),
                fontSize: 17,
                fontWeight: FontWeight.w500,
               ),
              ),
            ],
          ),
          // 2nd row
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.arrow_forward_ios,
              color: const Color(0xff296e48).withOpacity(.4),
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}