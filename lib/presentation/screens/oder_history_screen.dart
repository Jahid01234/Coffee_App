import 'package:coffee_app_ui/presentation/screens/main_botton_nav_screen.dart';
import 'package:coffee_app_ui/presentation/widgets/appbar_container.dart';
import 'package:coffee_app_ui/presentation/widgets/custom_elevated_button.dart';
import 'package:coffee_app_ui/presentation/widgets/oder_item_card.dart';
import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1st:- app bar widget part.........
            Row(
              children: [
                // Back to page button .....
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> const MainBottomNavScreen(),
                     ),
                    );
                  },
                  child: const AppBarContainer(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 70),

                // Order History Head Line Text.....
                const Text(
                  "Order History",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // 1st:- Order date/ total amount....
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Order date part..........
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Order date",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 0),
                            Text(
                              "20th March 16:40",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        // Total amount part..........
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Total amount",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "\$ 109.20",
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // 2nd:- Here, Credit card show part .....
                    SizedBox(height: 20),
                    OderItemCard(
                      image: "assets/images/cappuccino.jpeg",
                      title: "Cappuccino",
                      subTitle: "With Oat Milk",
                    ),
                    SizedBox(height: 10),
                    OderItemCard(
                      image: "assets/images/onboarding_bg.png",
                      title: "Hard Coffee",
                      subTitle: "With cherchez",
                    ),
                    SizedBox(height: 10),
                    OderItemCard(
                      image: "assets/images/caffe_macchiato.jpeg",
                      title: "Cafe Machination",
                      subTitle: "With Cream",
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),

            // 4th:- Total price and Pay button part .....
            CustomElevatedButton(
              onTap: () {},
              title: "Download",
              bgColor: Colors.orange.shade600,
            ),
          ],
        ),
      ),
    );
  }
}




