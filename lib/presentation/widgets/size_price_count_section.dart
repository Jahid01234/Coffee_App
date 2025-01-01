import 'package:coffee_app_ui/presentation/widgets/appbar_container.dart';
import 'package:coffee_app_ui/presentation/widgets/rich_text_widget.dart';
import 'package:flutter/material.dart';

class SizePriceCountSection extends StatelessWidget {
  final String size;
  final String totalPrice;
  final String subPrice;
  final String quantity;

  const SizePriceCountSection({
    super.key,
    required this.size,
    required this.totalPrice,
    required this.subPrice,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // size/price......
        Row(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 60,
                  child: AppBarContainer(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        size,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 2),
                SizedBox(
                  width: 90,
                  child: AppBarContainer(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: Center(
                      child: RichTextWidget(
                        text: subPrice,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 30),
            RichTextWidget(
              signText: "X " ,
              text: quantity,
            ),
          ],
        ),
        Text(
          totalPrice,
          style: const TextStyle(
            color: Colors.orange,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}