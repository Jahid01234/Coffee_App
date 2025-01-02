import 'package:coffee_app_ui/presentation/screens/home_screen.dart';
import 'package:coffee_app_ui/presentation/widgets/appbar_container.dart';
import 'package:coffee_app_ui/presentation/widgets/favourite_item_list_card.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Row(
            children: [
              // Back to page button .....
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
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
              const SizedBox(width: 90),
              // Favourite Head Line Text.....
              const Text(
                "Favourite",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: ListView.separated(
            shrinkWrap: true,
            primary: false,
            scrollDirection: Axis.vertical,
            itemCount: 5,
            separatorBuilder: (_,__){
              return const SizedBox(height: 20);
            },
            itemBuilder: (context,index){
              return const FavouriteItemListCard();
            },
        ),
      ),
    );
  }
}


