import 'package:ecommerceapp/Model/bagModel.dart';
import 'package:ecommerceapp/Model/promoCodeModel.dart';
import 'package:ecommerceapp/widget/bagCard.dart';
import 'package:ecommerceapp/widget/myPromoCard.dart';
import 'package:flutter/material.dart';

class promoStyle extends StatelessWidget {
  const promoStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.13,
              child: promoCard(
                pCard: promocodeItem[index],
              )),
          separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
          itemCount: promocodeItem.length),
    );
  }
}
