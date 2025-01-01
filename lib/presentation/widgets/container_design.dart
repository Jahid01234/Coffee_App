import 'package:flutter/material.dart';

class ContainerDesign extends StatelessWidget {
  final String title;
  final String? optionalTitle;
  final String assetImage;

  const ContainerDesign({
    super.key,
    required this.title,
    this.optionalTitle,
    required this.assetImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 8),
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff262B34),
            Colors.black,
          ],
        ),
        boxShadow:  [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 1,
              spreadRadius: 0,
              offset: const Offset(0,0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1st row
              Row(
                children: [
                  Image.asset(assetImage,height: 40,width: 40,),
                  const SizedBox(width: 10),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              // 2nd row
              Center(
                child: Text(
                  optionalTitle ?? '',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
