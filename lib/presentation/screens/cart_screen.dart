import 'package:coffee_app_ui/presentation/screens/home_screen.dart';
import 'package:coffee_app_ui/presentation/widgets/appbar_container.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1st:- app bar widget.........
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
            const SizedBox(height: 30),


          ],
        ),
      ),
    );
  }
}

