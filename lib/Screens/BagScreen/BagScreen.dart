import 'package:ecommerceapp/Constant/colors.dart';
import 'package:ecommerceapp/widget/bagStyle.dart';
import 'package:ecommerceapp/widget/profilestyle.dart';
import 'package:flutter/material.dart';

class BagScreen extends StatelessWidget {
  BagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 10, top: 10, bottom: 10),
                child: Container(
                  child: Text(
                    "My Bag",
                    style: TextStyle(
                        color: textColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              bagStyle()
            ],
          ),
        ),
      ),
    );
  }
}
