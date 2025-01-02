import 'package:coffee_app_ui/presentation/screens/cart_screen.dart';
import 'package:coffee_app_ui/presentation/screens/favourite_screen.dart';
import 'package:coffee_app_ui/presentation/screens/home_screen.dart';
import 'package:coffee_app_ui/presentation/screens/oder_history_screen.dart';
import 'package:flutter/material.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    CartScreen(),
    FavouriteScreen(),
    OrderHistoryScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:screens[_selectedIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: (value){
          _selectedIndex = value;
          setState(() {});
        },
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey.withOpacity(0.6),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items:  const [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home_filled),
          ),

          BottomNavigationBarItem(
            label: "Cart",
            icon: Icon(Icons.shopping_bag),
          ),

          BottomNavigationBarItem(
            label: "Favourite",
            icon: Icon(Icons.favorite),
          ),

          BottomNavigationBarItem(
            label: "Notification",
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
    );
  }
}
