/*import 'package:ecommerceapp/Model/CategoryModel.dart';

import 'package:ecommerceapp/widget/NewProductCard.dart';

import 'package:flutter/material.dart';

class favouritegridStyle extends StatelessWidget {
  const favouritegridStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.55,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5),
          padding: EdgeInsets.only(left: 15, right: 15),
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
*/