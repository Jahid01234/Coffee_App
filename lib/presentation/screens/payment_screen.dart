import 'package:coffee_app_ui/presentation/widgets/appbar_container.dart';
import 'package:coffee_app_ui/presentation/widgets/container_design.dart';
import 'package:coffee_app_ui/presentation/widgets/custom_elevated_button.dart';
import 'package:coffee_app_ui/presentation/widgets/rich_text_widget.dart';
import 'package:flutter/material.dart';


class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

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
                const SizedBox(width: 90),

                // Payment Head Line Text.....
                const Text(
                  "Payment",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            Expanded(
              child: Column(
                children: [
                  // 2nd:- Here, Credit card show part .....
                  Container(
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.orange.shade600,
                        width: 2.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Credit Card",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 160,
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
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20,
                                  horizontal: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // 1st:- credit  and visa image show..
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        "assets/images/credit.png",
                                        color: Colors.orange,
                                      ),
                                      Image.asset("assets/images/visa.png"),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  // 2nd:- pin code  show....
                                  const Text(
                                    "3 4 5 6   6 8 6 8   9 0 4 3   2 1 4 2 ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 25),
                                  // 3rd:- Name and expiry date   show....
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Card Holder Name",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "Md. Jahid Hasan",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Expiry Date",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "02/30",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // 3rd:- Other card show part .....
                 const ContainerDesign(
                   assetImage: "assets/images/wallet_pay.png",
                   title: "Wallet",
                   optionalTitle: "\$100.50",
                 ),

                  const ContainerDesign(
                    assetImage: "assets/images/google_pay.png",
                    title: "Google Pay",
                  ),

                  const ContainerDesign(
                    assetImage: "assets/images/apple_pay.png",
                    title: "Apple Pay",
                  ),

                  const ContainerDesign(
                    assetImage: "assets/images/pay_pal.png",
                    title: "Pay Pal",
                  ),

                  const ContainerDesign(
                    assetImage: "assets/images/amazon_pay.png",
                    title: "Amazon Pay",
                  ),
                ],
              ),
            ),

            // 4th:- Total price and Pay button part .....
            SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      RichTextWidget(
                        text: "21.42",
                        size: 15,
                        textFontWeight: FontWeight.normal,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 200,
                    child: CustomElevatedButton(
                      onTap: () {
                      },
                      title: "Pay from Credit Card",
                      bgColor: Colors.orange.shade600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
