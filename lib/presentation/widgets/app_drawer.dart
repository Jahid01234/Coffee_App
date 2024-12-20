import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff000503),
      child: ListView(
        children:
        [
          const SizedBox(height: 20),
          Center(
            child: ClipOval(
              child: Image.asset(
                "assets/images/onboarding_bg.png",
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 30),
          const ListTile(
            title: Text(
                'Home',
                style: TextStyle(
                    color: Colors.white,
                ),
            ),
            leading: Icon(
                Icons.home,
                color: Colors.grey,
            ),
          ),
          const ListTile(
            title: Text(
                'About',
                style: TextStyle(
                    color: Colors.white,
                ),
            ),
            leading: Icon(
                Icons.account_box,
                color: Colors.grey,
            ),
          ),
          const ListTile(
            title: Text(
              'Service',
              style: TextStyle(
                  color: Colors.white,
              ),
            ),
            leading: Icon(
                Icons.add_shopping_cart,
                color: Colors.grey,
            ),
          ),
          const ListTile(
            title: Text(
                'Contact',
                style: TextStyle(
                    color: Colors.white,
                ),
            ),
            leading: Icon(
                Icons.phone,
                color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
