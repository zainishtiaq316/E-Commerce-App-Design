import 'dart:ffi';

class PaymentModel {
  String? image;
  String? chip;
  String? cardCode;

  bool? isSelected;
  PaymentModel({
    this.cardCode,
    this.isSelected = false,
  });
  factory PaymentModel.fromJson(Map<String, dynamic> json) {
    return PaymentModel(cardCode: json['cardNumber']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cardNumber'] = this.cardCode;
    return data;
  }
}

List<PaymentModel> shipping = [
  PaymentModel(),
];
