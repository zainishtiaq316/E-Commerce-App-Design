class profileModel {
  String? title;
  String? subtitle;
  profileModel({this.subtitle, this.title});
}

List<profileModel> profileitem = [
  profileModel(title: "My Orders", subtitle: "Already have 12 orders"),
  profileModel(title: "Shipping Address", subtitle: "3 addresses"),
  profileModel(title: "Payment methods", subtitle: "Visa **34"),
  profileModel(
    title: "Promocodes",
    subtitle: "you have special promocodes",
  ),
  profileModel(title: "My reviews", subtitle: "Reviews for 4 items"),
  profileModel(title: "Settings", subtitle: "Notifications, password")
];
