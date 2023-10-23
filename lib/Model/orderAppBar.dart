class orderAppBar {
  String? OrderStatus;
  orderAppBar({this.OrderStatus});
}

List<orderAppBar> orderBar = [
  orderAppBar(
    OrderStatus: "Delivered",
  ),
  orderAppBar(
    OrderStatus: "Processing",
  ),
  orderAppBar(
    OrderStatus: "Cancelled",
  )
];
