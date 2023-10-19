import 'package:ecommerceapp/Constant/colors.dart';
import 'package:flutter/material.dart';

class orderSummary extends StatelessWidget {
  final String OrderDispatchSummarizer;
  final String price;
  const orderSummary(
      {super.key, required this.OrderDispatchSummarizer, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          OrderDispatchSummarizer,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
        Spacer(),
        Text(
          price,
          style: TextStyle(
              color: textColor, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
