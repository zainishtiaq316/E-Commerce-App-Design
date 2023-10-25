import 'package:ecommerceapp/Model/MyOders.dart';
import 'package:ecommerceapp/Model/shippingAddressmodel.dart';
import 'package:ecommerceapp/widget/ShippingCard.dart';
import 'package:ecommerceapp/widget/myOrdersCard.dart';
import 'package:flutter/material.dart';

class processingStyle extends StatefulWidget {
  const processingStyle({
    Key? key,
  }) : super(key: key);

  @override
  _processingStyleState createState() => _processingStyleState();
}

class _processingStyleState extends State<processingStyle> {
  int selectedAddressIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.20,
            child: myOrderedCard(
              orders: odersDetailsProcessing[index],
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          height: 10,
        ),
        itemCount: odersDetailsProcessing.length,
      ),
    );
  }
}
