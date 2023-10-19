import 'package:ecommerceapp/Model/CategoryModel.dart';
import 'package:ecommerceapp/widget/NewProductCard.dart';
import 'package:flutter/material.dart';

class saleProductStyle extends StatelessWidget {
  const saleProductStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.39,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => SizedBox(
              width: 140, child: NewProductCard(data: saleItems[index])),
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: saleItems.length),
    );
  }
}
