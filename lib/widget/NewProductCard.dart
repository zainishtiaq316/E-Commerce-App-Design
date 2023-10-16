import 'package:ecommerceapp/Model/NewItemModel.dart';
import 'package:flutter/material.dart';

class NewProductCard extends StatelessWidget {
  NewProductCard({super.key, required this.data});
  NewItemModel data;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              data.image!,
              fit: BoxFit.fitWidth,
              //fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Container(
              width: 350,
              child: Text(
                "${data.name}",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: RichText(
              text: new TextSpan(children: [
                TextSpan(
                  text: '\$ ${data.discountPrice} ',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.lineThrough,
                      fontSize: 15),
                ),
                TextSpan(
                  text: '\$ ${data.price}',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
