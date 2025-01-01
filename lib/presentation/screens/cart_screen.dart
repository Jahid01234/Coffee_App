import 'package:coffee_app_ui/presentation/screens/home_screen.dart';
import 'package:coffee_app_ui/presentation/screens/payment_screen.dart';
import 'package:coffee_app_ui/presentation/widgets/appbar_container.dart';
import 'package:coffee_app_ui/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> const HomeScreen(),
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
                const SizedBox(width: 100),
                // Cart Head Line Text.....
                const Text(
                  "Cart",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // 2nd:- Here, cart item show part .....
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.vertical,
                itemCount: 10,
                separatorBuilder: (_,__){
                  return const SizedBox(height: 15);
                },
                itemBuilder: (context,index){
                  return Container(
                    height: 180,
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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 1st:- image show
                          Container(
                            height: 180,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/cappuccino.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // 2nd:- title/sub-title/size/rice/item-count
                          Padding(
                            padding: const EdgeInsets.only(left: 15,),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // 1st:- title and sub-title part.......
                                const Text(
                                  "Cappuccino",
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Text(
                                  "With Oat Milk",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                // 2nd:- Size and Price part...
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      width:80,
                                      child: AppBarContainer(
                                          child: Center(
                                              child: Text(
                                                "M",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                          ),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    RichText(
                                      text: const TextSpan(
                                        text: "\$ ",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "6.78",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                // 3rd:- item count part...
                                const SizedBox(height: 10),
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      height: 35,
                                      width: 35,
                                      child: AppBarContainer(
                                        borderRadius: BorderRadius.circular(10),
                                        bgColor: Colors.orange,
                                        child: const Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    SizedBox(
                                      height: 35,
                                      width: 60,
                                      child: AppBarContainer(
                                        borderRadius: BorderRadius.circular(10),
                                        borderColor: Colors.orange.shade700,
                                        child:  const Center(
                                            child: Text(
                                              "1",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.white,
                                              ),
                                            ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    SizedBox(
                                      height: 35,
                                      width: 35,
                                      child: AppBarContainer(
                                        borderRadius: BorderRadius.circular(10),
                                        bgColor: Colors.orange,
                                        child: const Icon(
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
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            // 3rd:- Total price and Pay button part .....
            SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Total Price",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text:"\$ ",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.orange,
                            fontWeight: FontWeight.w700,
                          ),
                          children:  [
                            TextSpan(
                              text: "20.40",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 200,
                    child: CustomElevatedButton(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> const PaymentScreen(),
                          ),
                        );
                      },
                      title: "Pay",
                      bgColor: Colors.orange.shade600,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

