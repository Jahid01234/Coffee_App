class CoffeeItem {
  String? title;
  String? subtitle;
  String? itemImg;
  double? price;
  double? rating;

  CoffeeItem({
    this.title,
    this.subtitle,
    this.itemImg,
    this.price,
    this.rating,
  });

  CoffeeItem.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    itemImg = json['itemImg'];
    price = json['price'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['itemImg'] = this.itemImg;
    data['price'] = this.price;
    data['rating'] = this.rating;
    return data;
  }
}