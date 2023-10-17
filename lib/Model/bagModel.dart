class bagModel {
  String? image;
  String? title;
  String? color;
  String? size;
  String? price;
  bagModel({this.color, this.image, this.price, this.size, this.title});
}

List<bagModel> bagItem = [
  bagModel(
      image: "assets/images/bag1.png",
      title: "Pullover",
      color: "Black",
      size: "L",
      price: "51"),
  bagModel(
      image: "assets/images/bag2.png",
      title: "  T-Shirt",
      color: "Gray",
      size: "L",
      price: "30"),
  bagModel(
      image: "assets/images/bag3.png",
      title: "Sport Dress",
      color: "Black",
      size: "M",
      price: "43")
];
