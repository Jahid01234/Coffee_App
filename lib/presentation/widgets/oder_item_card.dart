import 'package:coffee_app_ui/presentation/widgets/rich_text_widget.dart';
import 'package:coffee_app_ui/presentation/widgets/size_price_count_section.dart';
import 'package:flutter/material.dart';

class OderItemCard extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const OderItemCard({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff262B34),
            Colors.black45,

          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1st:- image/title/sub-title/price show..
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // image part...
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    // Title/sub-title part...
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          subTitle,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const RichTextWidget(
                  text: "36.40",
                ),
              ],
            ),
            const SizedBox(height: 10),
            // 2nd:- size/price/Quantity/total price show..
            const SizePriceCountSection(
              size: "S",
              subPrice: "4.20",
              quantity: "2",
              totalPrice: "8.40",
            ),
            const SizedBox(height: 5),
            const SizePriceCountSection(
              size: "M",
              subPrice: "6.20",
              quantity: "2",
              totalPrice: "12.40",
            ),
            const SizedBox(height: 5),
            const SizePriceCountSection(
              size: "L",
              subPrice: "5.20",
              quantity: "3",
              totalPrice: "15.60",
            ),
          ],
        ),
      ),
    );
  }
}