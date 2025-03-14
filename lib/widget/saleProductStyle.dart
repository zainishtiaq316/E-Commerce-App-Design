import 'package:ecommerceapp/Model/CategoryModel.dart';
import 'package:ecommerceapp/provider/getCategoryProvider.dart';
import 'package:ecommerceapp/provider/NewProductCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class saleProductStyle extends StatelessWidget {
  const saleProductStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(
      builder: (context, categoryProvider, child) {
        if (!categoryProvider.isloading) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.23,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categoryProvider.categories.length,
              separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
              itemBuilder: (context, index) => SizedBox(
                  width: MediaQuery.of(context).size.width * 0.33,
                  child:
                      NewProductCard(data: categoryProvider.categories[index])),
            ),
          );
        } else {
          return Container(
            child: Text('hello'),
          );
        }
      },
    );
  }
}
