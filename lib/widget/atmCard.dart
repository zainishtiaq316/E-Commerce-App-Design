import 'package:ecommerceapp/Model/paymentModel.dart';
import 'package:flutter/material.dart';

class AtmCardWidget extends StatelessWidget {
  final PaymentModel card;

  AtmCardWidget({required this.card});

  @override
  Widget build(BuildContext context) {
    String maskedNumber = maskCardNumber(card.cardCode!);

    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blue,
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Card Number',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            Text(
              maskedNumber,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 6.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String maskCardNumber(String cardNumber) {
    if (cardNumber.length < 12) {
      return 'Invalid Card Number';
    }

    String masked = '';
    for (int i = 0; i < 8; i++) {
      masked += '*';
    }
    masked += cardNumber.substring(8); // Show the remaining 4 digits
    return masked;
  }
}
