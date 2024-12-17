import 'package:coffee_app_ui/presentation/widgets/appbar_container.dart';
import 'package:coffee_app_ui/presentation/widgets/coffee_category_types.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1st:- app bar widget.........
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppBarContainer(
                    child: Icon(
                      Icons.apps_rounded,
                      color: Colors.white.withOpacity(0.2),
                    ),
                ),
                AppBarContainer(
                  child: ClipOval(
                    child: Image.asset("assets/images/jahid.jpg"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // 2nd:- Find the best coffee for you Text part...........
            const Text(
                "Find the best\ncoffee for you",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.w700
              ),
            ),
            const SizedBox(height: 30),

            // 3rd:- searchBox part...........
            buildTextField(),
            const SizedBox(height: 30),

            // 4th:- Coffee category types............
            const CoffeeCategoryTypes()
          ],
        ),
      ),
    );
  }

  // Text field widget......
  Widget buildTextField() {
    return TextField(
            style: const TextStyle(color: Colors.white),
            readOnly: true,
            decoration: InputDecoration(
              hintText: "Find your coffee ...",
              hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.3),
              ),
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: BorderSide.none
              ),
              filled: true,
              fillColor: const Color(0xff0a0c0c),
              //fillColor: const Color(0xFF141921),

              contentPadding: const EdgeInsets.all(14),
            ),
            cursorColor: Colors.grey,
          );
  }
}
