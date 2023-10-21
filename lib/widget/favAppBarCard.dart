import 'package:ecommerceapp/Model/favoutiteAppbar.dart';
import 'package:flutter/material.dart';

class favAppBarCard extends StatelessWidget {
  final favouriteAppBar appCard;
  const favAppBarCard({super.key, required this.appCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.black),
      child: Center(
        child: Text(
          appCard.name!,
          style: TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
