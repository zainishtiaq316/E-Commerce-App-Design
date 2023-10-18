import 'package:flutter/material.dart';

class fashionSale extends StatelessWidget {
  const fashionSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Image.asset(
                  "assets/images/newCollection.png",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned.fill(
                  right: 17,
                  bottom: 25,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      child: Text(
                        "New Collection",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ))
            ],
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.25,
                            color: Colors.white,
                          ),
                          Positioned.fill(
                              left: 17,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.33,
                                  child: Text(
                                    "Summer Sale",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ))
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.25,
                            child: Image.asset(
                              "assets/images/black.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned.fill(
                              left: 17,
                              bottom: 25,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.31,
                                  child: Text(
                                    "Black",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset(
                          "assets/images/men'sHoddie.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned.fill(
                          child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.31,
                          child: Text(
                            "Men's hoddies",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
