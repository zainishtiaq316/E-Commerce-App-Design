import 'package:ecommerceapp/Constant/colors.dart';
import 'package:ecommerceapp/Screens/BagScreen/addPayment.dart';
import 'package:ecommerceapp/Screens/ProfileScreen/changePassword.dart';
import 'package:ecommerceapp/widget/myOrderStyle.dart';
import 'package:ecommerceapp/widget/orderAppBarStyle.dart';
import 'package:ecommerceapp/widget/profilestyle.dart';
import 'package:flutter/material.dart';

class MyOrderedScreen extends StatefulWidget {
  MyOrderedScreen({super.key});

  @override
  State<MyOrderedScreen> createState() => _MyOrderedScreenState();
}

class _MyOrderedScreenState extends State<MyOrderedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  child: Text(
                    "My Orders",
                    style: TextStyle(
                        color: textColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              orderAppBarStyle(),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: myOrderStyle()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
