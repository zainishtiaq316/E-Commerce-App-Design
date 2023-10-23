import 'package:ecommerceapp/Model/size.dart';
import 'package:flutter/material.dart';

class SizeCard extends StatelessWidget {
  final sizeModel size;
  const SizeCard({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black26, width: 1)),
      child: Center(
          child: Text(
        "${size.size}",
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
      )),
    );
  }
}
