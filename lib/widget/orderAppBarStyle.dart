import 'package:ecommerceapp/Model/favoutiteAppbar.dart';
import 'package:ecommerceapp/Model/orderAppBar.dart';
import 'package:ecommerceapp/widget/OrderAppBarCard.dart';
import 'package:ecommerceapp/widget/favAppBarCard.dart';
import 'package:flutter/material.dart';

class orderAppBarStyle extends StatelessWidget {
  const orderAppBarStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.035,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => SizedBox(
              width: MediaQuery.of(context).size.width * 0.28,
              child: orderAppBarCard(appCard: orderBar[index])),
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: orderBar.length),
    );
  }
}
