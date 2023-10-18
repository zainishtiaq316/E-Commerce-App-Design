class PromeCodeModel {
  String? image;
  String? percentage;
  String? offer;
  String? promoCode;
  bool? discountColor;
  String? duration;
  PromeCodeModel(
      {this.image, this.duration, this.offer, this.percentage, this.promoCode});
}

List<PromeCodeModel> promocodeItem = [
  PromeCodeModel(
      image: "assets/images/p1.png",
      percentage: "10",
      offer: "Personal offer",
      promoCode: "mypromocode2020",
      duration: "6 days remaining"),
  PromeCodeModel(
      image: "assets/images/p2.png",
      percentage: "15",
      offer: "Summer Sale",
      promoCode: "summer2020",
      duration: "23 days remaining"),
  PromeCodeModel(
      image: "assets/images/p1.png",
      percentage: "22",
      offer: "Personal offer",
      promoCode: "mypromocode2020",
      duration: "6 days remaining")
];
