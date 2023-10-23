import 'package:ecommerceapp/Model/MyOders.dart';
import 'package:ecommerceapp/Model/favoutiteAppbar.dart';
import 'package:ecommerceapp/Model/orderAppBar.dart';
import 'package:flutter/material.dart';

class orderAppBarCard extends StatelessWidget {
  final orderAppBar appCard;
  const orderAppBarCard({super.key, required this.appCard});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.black),
        child: Center(
          child: Text(
            appCard.OrderStatus!,
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
