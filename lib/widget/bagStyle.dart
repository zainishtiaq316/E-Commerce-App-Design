import 'package:ecommerceapp/Model/bagModel.dart';
import 'package:ecommerceapp/widget/bagCard.dart';
import 'package:flutter/material.dart';

class bagStyle extends StatelessWidget {
  const bagStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.15,
              child: bagCard(
                bag: bagItem[index],
              )),
          separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
          itemCount: bagItem.length),
    );
  }
}
