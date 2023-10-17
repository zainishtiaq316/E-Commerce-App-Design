import 'package:ecommerceapp/Model/categoriesModel.dart';
import 'package:ecommerceapp/widget/categoriesCard.dart';
import 'package:flutter/material.dart';

class categoriesStyle extends StatelessWidget {
  const categoriesStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.13,
              child: categoriesCard(
                categorycard: categories[index],
              )),
          separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
          itemCount: categories.length),
    );
  }
}
