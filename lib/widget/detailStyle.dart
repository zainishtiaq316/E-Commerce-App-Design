import 'package:ecommerceapp/Model/CategoryModel.dart';
import 'package:ecommerceapp/widget/NewProductCard.dart';
import 'package:flutter/material.dart';

class DetailStyle extends StatelessWidget {
  const DetailStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.38,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => SizedBox(
              width: MediaQuery.of(context).size.width * 0.43,
              child: NewProductCard(data: detailItems[index])),
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: detailItems.length),
    );
  }
}
