import 'package:ecommerceapp/Model/CategoryModel.dart';

import 'package:ecommerceapp/widget/NewProductCard.dart';

import 'package:flutter/material.dart';

class favouriteStyle extends StatelessWidget {
  const favouriteStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.6,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5),
          padding: EdgeInsets.only(left: 10, right: 10),
          itemCount: favouriteItemss.length,
          itemBuilder: (context, index) {
            return Container(
              child: GestureDetector(
                onTap: () {},
                child: NewProductCard(data: favouriteItemss[index]),
              ),
            );
          }),
    );
  }
}
