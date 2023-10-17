class NewItemModel {
  String? image;
  String? name;
  String? price;
  String? discountPrice;
  NewItemModel({this.image, this.name, this.price, this.discountPrice});
}

List<NewItemModel> items = [
  NewItemModel(
    image: "assets/images/n1.png",
    name: "Girl Dress",
    price: "12",
    discountPrice: "15",
  ),
  NewItemModel(
    image: "assets/images/n2.png",
    name: "Boy Dress",
    price: "12",
    discountPrice: "15",
  )
];
