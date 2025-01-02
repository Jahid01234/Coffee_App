import 'package:coffee_app_ui/data/model/coffee_model.dart';
import 'package:coffee_app_ui/presentation/screens/cart_screen.dart';
import 'package:coffee_app_ui/presentation/screens/favourite_screen.dart';
import 'package:coffee_app_ui/presentation/widgets/appbar_container.dart';
import 'package:coffee_app_ui/presentation/widgets/custom_elevated_button.dart';
import 'package:coffee_app_ui/presentation/widgets/rich_text_widget.dart';
import 'package:coffee_app_ui/presentation/widgets/size_picker.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  final CoffeeModel coffeeModel;

  const ProductDetailsScreen({
    super.key,
    required this.coffeeModel,
  });

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Stack(
          //fit: StackFit.expand,
          //clipBehavior: Clip.none,
          children: [
            // 1st stack:- image part..........
            Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(widget.coffeeModel.itemImg),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const AppBarContainer(
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> const FavouriteScreen(),
                          ),
                        );
                      },
                      child: const AppBarContainer(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // 2nd stack:- title/subtitle/rating part..........
            Positioned(
              top: 350,
              left: 0,
              right: 0,
              child: Container(
                height: 155,
                decoration: BoxDecoration(
                  color: const Color(0xFF342520).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      // 1st: title/subtitle and coffee/ water drop icon..
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.coffeeModel.title,
                                style: const TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                widget.coffeeModel.subtitle,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                height: 55,
                                width: 60,
                                child: AppBarContainer(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.coffee,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        "Coffee",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              SizedBox(
                                height: 55,
                                width: 60,
                                child: AppBarContainer(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.water_drop_rounded,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        "Milk",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      // 2nd: rating count and medium roasted..
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              RichTextWidget(
                                  signColor: Colors.white,
                                  signText:widget.coffeeModel.rating.toString(),
                                  signFontWeight: FontWeight.normal,

                                  color: Colors.grey,
                                  text: " (5,789)",
                                  textFontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                            width: 130,
                            child: AppBarContainer(
                              child: Center(
                                child: Text(
                                  "Medium Roasted",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // 3rd stack:- Description/size/price/button part..........
            Positioned(
              top: 520,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 295,
                child: Padding(
                  padding: const EdgeInsets.only(left: 23, right: 23),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 1st: Description part....
                      const Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                       widget.coffeeModel.description,
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      // 2nd: Size picker part....
                      const SizedBox(height: 15),
                      const Text(
                        "Size",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      // Size picker...
                       const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizePicker(),
                        ],
                      ),
                      const SizedBox(height: 30),
                      // price and Button section..
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                "Price",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              RichTextWidget(
                                  text: widget.coffeeModel.price.toString(),
                                  textFontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 200,
                            child: CustomElevatedButton(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=> const CartScreen(),
                                 ),
                                );
                              },
                              title: "Add to Cart",
                              bgColor: Colors.orange.shade600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
