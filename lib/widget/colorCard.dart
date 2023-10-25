import 'package:ecommerceapp/Model/colorsnapShor.dart';
import 'package:ecommerceapp/Model/size.dart';
import 'package:flutter/material.dart';

class colorCard extends StatelessWidget {
  final colorModel color;
  const colorCard({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black26, width: 1)),
      child: Center(
          child: Text(
        "${color.Color}",
        style: TextStyle(
          color: Colors.black,
          fontSize: 13,
        ),
      )),
    );
  }
}
