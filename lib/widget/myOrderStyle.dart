import 'package:ecommerceapp/Model/MyOders.dart';
import 'package:ecommerceapp/Model/shippingAddressmodel.dart';
import 'package:ecommerceapp/widget/ShippingCard.dart';
import 'package:ecommerceapp/widget/myOrdersCard.dart';
import 'package:flutter/material.dart';

class myOrderStyle extends StatefulWidget {
  const myOrderStyle({
    Key? key,
  }) : super(key: key);

  @override
  _myOrderStyleState createState() => _myOrderStyleState();
}

class _myOrderStyleState extends State<myOrderStyle> {
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
              orders: odersDetailsDelivered[index],
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          height: 10,
        ),
        itemCount: odersDetailsDelivered.length,
      ),
    );
  }
}
