class categoriesModel {
  String? name;
  String? image;
  categoriesModel({this.name, this.image});
}

List<categoriesModel> categories = [
  categoriesModel(name: "New", image: "assets/images/new.png"),
  categoriesModel(name: "Clothes", image: "assets/images/clothes.png"),
  categoriesModel(name: "Shoes", image: "assets/images/shoes.png"),
  categoriesModel(name: "Accesories", image: "assets/images/accesories.png"),
];
