import 'package:ecommerceapp/Constant/colors.dart';
import 'package:flutter/material.dart';

class checkOut extends StatefulWidget {
  const checkOut({super.key});

  @override
  State<checkOut> createState() => _checkOutState();
}

class _checkOutState extends State<checkOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: Text(
          "Checkout",
          style: TextStyle(
              color: textColor, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                "Shipping address",
                style: TextStyle(
                    color: textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              surfaceTintColor: Colors.white,
              shadowColor: Colors.grey,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Jane Doe",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Change",
                                style: TextStyle(
                                    color: buttonColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              )),
                        )
                      ],
                    ),
                    Container(
                      child: Text("3 Newbridge Court"),
                    ),
                    Container(
                      child: Text("3 Newbridge Court"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
