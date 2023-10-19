import 'dart:ffi';

class ShippingModel {
  String? name;
  String? address;
  String? city;
  String? state;
  int? zipCode;
  String? country;
  bool? isSelected;
  ShippingModel(
      {this.name,
      this.address,
      this.city,
      this.country,
      this.state,
      this.isSelected = false,
      this.zipCode});
}

List<ShippingModel> shipping = [
  ShippingModel(
      name: "Jane Doe",
      address: "3 Newbridge Court",
      city: "Chino Hills",
      state: "California",
      zipCode: 91709,
      country: "United State"),
  ShippingModel(
      name: "Jane Doe",
      address: "3 Newbridge Court",
      city: "Chino Hills",
      state: "California",
      zipCode: 91709,
      country: "United State"),
  ShippingModel(
      name: "Jane Doe",
      address: "51 RiverSide",
      city: "Chino Hills",
      state: "California",
      zipCode: 91709,
      country: "United State")
];
