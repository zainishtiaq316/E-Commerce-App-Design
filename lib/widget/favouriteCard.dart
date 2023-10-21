import 'package:ecommerceapp/Model/CategoryModel.dart';
import 'package:ecommerceapp/Model/bagModel.dart';
import 'package:ecommerceapp/Screens/detailScreen.dart';
import 'package:flutter/material.dart';

import '../Constant/colors.dart';

class favouriteCard extends StatelessWidget {
  final NewItemModel favCard;
  favouriteCard({Key? key, required this.favCard});

  @override
  Widget build(BuildContext context) {
    int totalStars = 5;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(detail: favCard)));
            },
            child: Card(
              elevation: 1,
              surfaceTintColor: Colors.white,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              favCard.image!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        if (favCard.showSpecificQuality == true)
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
                                    "${favCard.quality}",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              )),
                        if (favCard.showSpecificDiscount == true)
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
                                    "${favCard.discountPercentage}",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              )),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 5, bottom: 5, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Text(
                                    "${favCard.fashion}",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                if (favCard.showCloseSymbol == true)
                                  GestureDetector(
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.grey,
                                    ),
                                  )
                              ],
                            ),
                            Container(
                              child: Text(
                                "${favCard.name}",
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Text(
                                    'Color: ',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '${favCard.color}',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  child: Text(
                                    'Size: ',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '${favCard.size}',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.46,
                              child: Row(
                                children: [
                                  if (favCard.showSpecificDiscount == true)
                                    Text(
                                      '${favCard.discountPrice} ',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          decorationStyle:
                                              TextDecorationStyle.solid,
                                          decorationThickness: 1,
                                          fontSize: 13),
                                    ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    child: Text(
                                      "\$${favCard.price}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13),
                                    ),
                                  ),
                                  Spacer(),
                                  for (int i = 1; i <= totalStars; i++)
                                    Icon(
                                      i <= favCard.stars!
                                          ? Icons.star
                                          : Icons
                                              .star_border, // Filled or empty star
                                      color: i <= favCard.stars!
                                          ? Colors.yellow
                                          : Colors.grey, // Star color
                                      size: 15,
                                    ),
                                  Container(
                                    child: Text(
                                      " (${favCard.ratings})",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: favCard.showBag == true
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
                  child: favCard.showBag == true
                      ? Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                          size: 15,
                        )
                      : Icon(
                          Icons.favorite_outline,
                          color: Colors.grey,
                          size: 15,
                        )))
        ],
      ),
    );
  }
}
