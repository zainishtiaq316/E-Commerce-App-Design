import 'package:ecommerceapp/Model/CategoryModel.dart';
import 'package:flutter/material.dart';

class NewProductCard extends StatelessWidget {
  NewProductCard({super.key, required this.data});
  NewItemModel data;
  @override
  Widget build(BuildContext context) {
    int totalStars = 5;

    return GestureDetector(
      onTap: () {},
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      data.image!,
                      fit: BoxFit.fitWidth,
                      //fit: BoxFit.cover,
                    ),
                  ),
                ),
                if (data.showSpecificQuality == true)
                  Positioned(
                      top: 10,
                      left: 5,
                      child: Container(
                        width: 40,
                        height: 22,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "${data.quality}",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      )),
                if (data.showSpecificDiscount == true)
                  Positioned(
                      top: 10,
                      left: 5,
                      child: Container(
                        width: 40,
                        height: 22,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "${data.discountPrice}",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      )),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: data.showBag == true
                                ? Colors.red
                                : Colors.white.withOpacity(0.9),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 2),
                                blurRadius: 5.0,
                                spreadRadius: 0,
                              ),
                            ]),
                        child: data.showBag == true
                            ? Icon(
                                Icons.shopping_bag,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.favorite_outline,
                                color: Colors.grey,
                              )))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                for (int i = 1; i <= totalStars; i++)
                  Icon(
                    i <= data.stars!
                        ? Icons.star
                        : Icons.star_border, // Filled or empty star
                    color: i <= data.stars!
                        ? Colors.yellow
                        : Colors.grey, // Star color
                    size: 17,
                  ),
                Container(
                  child: Text(
                    " (${data.ratings})",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Text(
                '${data.fashions}',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0),
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
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: RichText(
                text: new TextSpan(children: [
                  if (data.showSpecificDiscount == true)
                    TextSpan(
                      text: '${data.discountPrice} ',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationThickness: 1,
                          fontSize: 15),
                    ),
                  TextSpan(
                    text: '${data.price}\$  ',
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
      ),
    );
  }
}
