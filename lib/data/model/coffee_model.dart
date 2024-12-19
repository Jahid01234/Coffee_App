
class CoffeeModel {
  final String title;
  final String subtitle;
  final String itemImg;
  final double price;
  final double rating;

  CoffeeModel({
    required this.title,
    required this.subtitle,
    required this.itemImg,
    required this.price,
    required this.rating,
  });

  //List of Coffee item...
  static List<CoffeeModel> coffeeItem = [
    CoffeeModel(
        title: "Cappuccino",
        subtitle: "With Oat Milk",
        itemImg: "assets/images/cappuccino.jpeg",
        price: 4.28,
        rating: 4.5,
    ),
    CoffeeModel(
      title: "Hard Coffee",
      subtitle: "With cherchez",
      itemImg: "assets/images/onboarding_bg.png",
      price: 3.14,
      rating: 4.2,
    ),
    CoffeeModel(
      title: "Cafe Machination",
      subtitle: "With Cream",
      itemImg: "assets/images/caffe_macchiato.jpeg",
      price: 4.14,
      rating: 4.9,
    ),
    CoffeeModel(
      title: "Cafe Latte",
      subtitle: "With Chocolate",
      itemImg: "assets/images/cafe_latte.jpeg",
      price: 4.14,
      rating: 4.0,
    ),

  ];

}