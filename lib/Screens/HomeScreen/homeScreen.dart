import 'package:ecommerceapp/Constant/colors.dart';
import 'package:ecommerceapp/Screens/HomeScreen/fashionsale.dart';
import 'package:ecommerceapp/provider/getCategoryProvider.dart';
import 'package:ecommerceapp/provider/getProductProvider.dart';
import 'package:ecommerceapp/provider/NewProductStyle.dart';
import 'package:ecommerceapp/widget/saleProductStyle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    super.initState();

    Provider.of<CategoryProvider>(context, listen: false).getCategoryData();
  }

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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/images/banner.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      left: 20,
                      bottom: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 200,
                              child: Text(
                                "Fashion Sale",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold),
                              )),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => fashionSale()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: buttonColor),
                              width: MediaQuery.of(context).size.width * 0.41,
                              height: MediaQuery.of(context).size.height * 0.06,
                              child: Center(
                                  child: Text(
                                "check",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              )),
                            ),
                          )
                        ],
                      ))
                ],
              ),
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
            ]),
      ),
    );
  }
}
