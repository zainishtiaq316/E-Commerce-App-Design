class PaymentModel {
  String? cardHolderName;
  String? chip;
  String? cardtypeImage;
  String? cardCode;
  String? expiryDate;
  String? cardtypeName;

  bool? selectMasterCard;
  bool? selectVisaCard;
  bool? isSelected;
  bool? isColored;

  PaymentModel(
      {this.cardCode,
      this.cardtypeImage,
      this.expiryDate,
      this.cardHolderName,
      this.chip,
      this.selectMasterCard,
      this.cardtypeName,
      this.selectVisaCard,
      this.isColored,
      this.isSelected = false});
}

List<PaymentModel> paymentItem = [
  PaymentModel(
      chip: "assets/images/chip.png",
      cardCode: "8765456765453947",
      cardHolderName: "Zain Ishtiaq",
      expiryDate: "05/23",
      cardtypeName: "assets/images/textmastercard.png",
      cardtypeImage: "assets/images/mastercard.png",
      selectMasterCard: true),
  PaymentModel(
      chip: "assets/images/chip.png",
      cardCode: "9098676534234546",
      cardHolderName: "Zain Ishtiaq",
      expiryDate: "11/22",
      isColored: true,
      cardtypeImage: "assets/images/visa.png",
      selectVisaCard: true),
];
