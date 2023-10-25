import 'package:ecommerceapp/Model/CategoryModel.dart';
import 'package:ecommerceapp/Model/colorsnapShor.dart';
import 'package:ecommerceapp/Model/size.dart';

import 'package:ecommerceapp/widget/NewProductCard.dart';
import 'package:ecommerceapp/widget/colorCard.dart';
import 'package:ecommerceapp/widget/sizeCard.dart';

import 'package:flutter/material.dart';

class colorStyle extends StatelessWidget {
  const colorStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2,
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          itemCount: sizeitems.length,
          // padding: EdgeInsets.only(left: 10, right: 10),
          itemBuilder: (context, index) {
            return Container(
              child: GestureDetector(
                onTap: () {},
                child: colorCard(color: colors[index]),
              ),
            );
          }),
    );
  }
}
