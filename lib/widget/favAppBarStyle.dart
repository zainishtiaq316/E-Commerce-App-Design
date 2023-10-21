import 'package:ecommerceapp/Model/favoutiteAppbar.dart';
import 'package:ecommerceapp/widget/favAppBarCard.dart';
import 'package:flutter/material.dart';

class favAppBarStyle extends StatelessWidget {
  const favAppBarStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.035,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => SizedBox(
              width: MediaQuery.of(context).size.width * 0.30,
              child: favAppBarCard(appCard: favAppBar[index])),
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: favAppBar.length),
    );
  }
}
