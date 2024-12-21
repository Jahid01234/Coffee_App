
class CoffeeModel {
  final String title;
  final String subtitle;
  final String description;
  final String itemImg;
  final double price;
  final double rating;

  CoffeeModel({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.itemImg,
    required this.price,
    required this.rating,
  });

  //List of Coffee item...
  static List<CoffeeModel> coffeeItem = [
    CoffeeModel(
        title: "Cappuccino",
        subtitle: "With Oat Milk",
        description:  "A cappuccino is a coffee-based drink made primarily from espresso and milk. It is the best coffee. ",
        itemImg: "assets/images/cappuccino.jpeg",
        price: 4.28,
        rating: 4.5,
    ),
    CoffeeModel(
      title: "Hard Coffee",
      subtitle: "With cherchez",
      description:  "A hard coffee is a coffee-based drink made primarily from espresso and milk. It is the best coffee. ",
      itemImg: "assets/images/onboarding_bg.png",
      price: 3.14,
      rating: 4.2,
    ),
    CoffeeModel(
      title: "Cafe Machination",
      subtitle: "With Cream",
      description:  "A cafe machination is a coffee-based drink made primarily from espresso and milk. It is the best coffee. ",
      itemImg: "assets/images/caffe_macchiato.jpeg",
      price: 4.14,
      rating: 4.9,
    ),
    CoffeeModel(
      title: "Cafe Latte",
      subtitle: "With Chocolate",
      description:  "A cafe latte is a coffee-based drink made primarily from espresso and milk. It is the best coffee. ",
      itemImg: "assets/images/cafe_latte.jpeg",
      price: 4.14,
      rating: 4.0,
    ),

  ];

}