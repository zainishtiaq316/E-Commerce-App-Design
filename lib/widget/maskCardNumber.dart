String maskCardNumber(String cardNumber) {
  if (cardNumber.length != 16) {
    return 'Add Card Code';
  }

  String masked = '**** **** ****';
  String remainingDigits = cardNumber.substring(12);

  return '$masked $remainingDigits';
}
