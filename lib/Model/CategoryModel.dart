class NewItemModel {
  String? image;
  String? name;
  String? price;
  String? quality;
  String? discountPrice;
  double? stars;
  int? ratings;
  String? fashions;
  bool? showSpecificDiscount;
  bool? showSpecificQuality;
  String? discountPercentage;
  bool? showBag;
  NewItemModel(
      {this.image,
      this.name,
      this.price,
      this.discountPrice,
      this.quality,
      this.stars,
      this.ratings,
      this.fashions,
      this.showBag,
      this.discountPercentage,
      this.showSpecificDiscount,
      this.showSpecificQuality});
}

List<NewItemModel> newItems = [
  NewItemModel(
      image: "assets/images/n1.png",
      name: "Girl Dress",
      price: "12",
      ratings: 20,
      fashions: "Dorothy Perkins",
      quality: "New",
      stars: 5,
      showSpecificQuality: true),
  NewItemModel(
      image: "assets/images/n2.png",
      name: "Boy Dress",
      price: "12",
      ratings: 10,
      fashions: "Sitlly",
      quality: "New",
      stars: 4,
      showSpecificQuality: true)
];
List<NewItemModel> saleItems = [
  NewItemModel(
      image: "assets/images/s1.png",
      name: "Evening Dress",
      price: "12",
      stars: 3,
      ratings: 30,
      fashions: "Sitlly",
      discountPrice: "15\$",
      discountPercentage: "-20%",
      showSpecificDiscount: true),
  NewItemModel(
      image: "assets/images/s2.png",
      name: "Sports Dress",
      price: "19",
      stars: 2,
      ratings: 40,
      fashions: "Dorothy Perkins",
      discountPrice: "22\$",
      discountPercentage: "-15%",
      showSpecificDiscount: true)
];
List<NewItemModel> favouriteItemss = [
  NewItemModel(
      image: "assets/images/f1.png",
      name: "Girl Dress",
      price: "12",
      ratings: 20,
      fashions: "Dorothy Perkins",
      quality: "New",
      stars: 5,
      showBag: true),
  NewItemModel(
      image: "assets/images/f2.png",
      name: "Boy Dress",
      price: "12",
      ratings: 10,
      fashions: "Sitlly",
      quality: "New",
      showBag: true,
      stars: 4,
      showSpecificQuality: true),
  NewItemModel(
      image: "assets/images/f4.png",
      name: "Evening Dress",
      price: "12",
      stars: 3,
      ratings: 30,
      showBag: true,
      fashions: "Sitlly",
      discountPrice: "15\$",
      discountPercentage: "-20%",
      showSpecificDiscount: true),
  NewItemModel(
    image: "assets/images/f1.png",
    name: "Sports Dress",
    price: "19",
    stars: 2,
    ratings: 40,
    showBag: true,
    fashions: "Dorothy Perkins",
  )
];
