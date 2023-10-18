import 'package:ecommerceapp/Constant/colors.dart';
import 'package:ecommerceapp/Screens/HomeScreen/fashionsale.dart';
import 'package:ecommerceapp/widget/NewProductStyle.dart';
import 'package:ecommerceapp/widget/saleProductStyle.dart';
import 'package:flutter/material.dart';

class streetCloths extends StatelessWidget {
  const streetCloths({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/streetCloths.png",
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      left: 20,
                      bottom: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              child: Text(
                            "Street Clothes",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 33,
                                fontWeight: FontWeight.bold),
                          )),
                        ],
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 15,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Sale",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'Metropolis',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Super Summer Sale",
                            style: TextStyle(color: description, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "View all",
                        style: TextStyle(color: textColor, fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 15,
                    top: 10,
                  ),
                  child: saleProductStyle()),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 15,
                  top: 10,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "New",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'Metropolis',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            "You’ve never seen it before!",
                            style: TextStyle(color: description, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "View all",
                        style: TextStyle(color: textColor, fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 15,
                    top: 10,
                  ),
                  child: NewProductStyle()),
            ]),
      ),
    );
  }
}
