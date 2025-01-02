import 'package:coffee_app_ui/presentation/widgets/appbar_container.dart';
import 'package:flutter/material.dart';

class FavouriteItemListCard extends StatelessWidget {
  const FavouriteItemListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black,
            const Color(0xff262B34).withOpacity(0.1),
          ],
        ),
      ),
      child: Stack(
        children: [
          // 1st stack:- image part..........
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: AssetImage("assets/images/cappuccino.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 20, right: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: AppBarContainer(
                  child: Icon(
                    Icons.favorite,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),

          // 2nd stack:- title/subtitle/rating part..........
          Positioned(
            top: 290,
            left: 0,
            right: 0,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: const Color(0xFF342520).withOpacity(0.2),
                borderRadius: BorderRadius.circular(35),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    // 1st: title/subtitle and coffee/ water drop icon..
                    const Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Cappuccino",
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "With Oat Milk",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Row(
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
                                      style: TextStyle(
                                          color: Colors.grey),
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
                                      style: TextStyle(
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // 2nd: rating count and medium roasted..
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            RichText(
                              text: const TextSpan(
                                text: "4.5",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                                children: [
                                  TextSpan(
                                    text: " (5,789)",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
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
          const Positioned(
            top: 450,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 295,
              child: Padding(
                padding: EdgeInsets.only(left: 23, right: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 1st: Description part....
                    Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "A cappuccino is a coffee-based drink made primarily from espresso and milk. It is the best coffee. ",
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}