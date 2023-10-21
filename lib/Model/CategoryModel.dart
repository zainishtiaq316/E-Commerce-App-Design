class NewItemModel {
  String? image;
  String? name;
  String? price;
  String? fashion;
  String? color;
  String? quality;
  String? discountPrice;
  double? stars;
  int? ratings;

  bool? showCloseSymbol;
  bool? showSpecificDiscount;
  bool? showSpecificQuality;
  String? discountPercentage;
  String? size;
  bool? showBag;
  NewItemModel(
      {this.image,
      this.name,
      this.price,
      this.discountPrice,
      this.quality,
      this.stars,
      this.color,
      this.size,
      this.fashion,
      this.showCloseSymbol,
      this.ratings,
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
      fashion: "Dorothy Perkins",
      quality: "New",
      stars: 5,
      showSpecificQuality: true),
  NewItemModel(
      image: "assets/images/n2.png",
      name: "Boy Dress",
      price: "12",
      ratings: 10,
      fashion: "Sitlly",
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
      fashion: "Sitlly",
      discountPrice: "15\$",
      discountPercentage: "-20%",
      showSpecificDiscount: true),
  NewItemModel(
      image: "assets/images/s2.png",
      name: "Sports Dress",
      price: "19",
      stars: 2,
      ratings: 40,
      fashion: "Dorothy Perkins",
      discountPrice: "22\$",
      discountPercentage: "-15%",
      showSpecificDiscount: true)
];
List<NewItemModel> favouriteItemss = [
  NewItemModel(
      image: "assets/images/f1.png",
      name: "Shirt",
      price: "32",
      fashion: "LIME",
      ratings: 10,
      color: "Blue",
      size: "L",
      quality: "New",
      showCloseSymbol: true,
      stars: 5,
      showBag: true),
  NewItemModel(
      image: "assets/images/f2.png",
      name: "Longsleeve Violeta",
      fashion: "Mango",
      color: "Orange",
      size: "S",
      price: "46",
      ratings: 0,
      quality: "New",
      showCloseSymbol: true,
      showBag: true,
      stars: 0,
      showSpecificQuality: true),
  NewItemModel(
      image: "assets/images/f1.png",
      name: "Shirt",
      price: "32",
      fashion: "LIME",
      ratings: 10,
      color: "Blue",
      size: "L",
      quality: "New",
      showCloseSymbol: true,
      stars: 5,
      showBag: true),
  NewItemModel(
      image: "assets/images/f4.png",
      name: "T-Shirt",
      price: "12",
      stars: 0,
      fashion: "&Berries",
      color: "Black",
      size: "S",
      ratings: 0,
      showCloseSymbol: true,
      showBag: true,
      discountPrice: "-55\$",
      discountPercentage: "-30%",
      showSpecificDiscount: true),
];
