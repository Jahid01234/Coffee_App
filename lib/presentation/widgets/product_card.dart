import 'package:coffee_app_ui/data/model/coffee_model.dart';
import 'package:coffee_app_ui/presentation/widgets/appbar_container.dart';
import 'package:flutter/material.dart';


class ProductCard extends StatelessWidget {
  final CoffeeModel coffeeModel;

  const ProductCard({
    super.key,
    required this.coffeeModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff262B34),
            Colors.black,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1st:- Image part...
            Stack(
              children: [
                Container(
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(coffeeModel.itemImg),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 25,
                    width: 53,
                    decoration: BoxDecoration(
                      color: const Color(0xFF342520).withOpacity(0.7),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(22),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.orange,
                        ),
                        Text(
                          coffeeModel.rating.toString(),
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // 2nd:- Title and Subtitle part...
            const SizedBox(height: 10),
            FittedBox(
              child: Text(
                coffeeModel.title,
                style: const TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              coffeeModel.subtitle,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),

            // 3rd:- Price and add button part...
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: "\$ ",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: coffeeModel.price.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                  width: 40,
                  child: AppBarContainer(
                    bgColor: Colors.orange,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
