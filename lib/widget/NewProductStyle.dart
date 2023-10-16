import 'package:ecommerceapp/Model/NewItemModel.dart';
import 'package:ecommerceapp/widget/NewProductCard.dart';
import 'package:flutter/material.dart';

class NewProductStyle extends StatelessWidget {
  const NewProductStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              SizedBox(width: 140, child: NewProductCard(data: items[index])),
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: items.length),
    );
  }
}
