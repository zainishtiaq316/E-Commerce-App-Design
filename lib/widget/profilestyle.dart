import 'package:ecommerceapp/Model/profileModel.dart';
import 'package:ecommerceapp/widget/profileCard.dart';
import 'package:flutter/material.dart';

class profileStyle extends StatelessWidget {
  const profileStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => SizedBox(
              width: MediaQuery.of(context).size.width,
              child: profileCard(
                profile: profileitem[index],
              )),
          separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
          itemCount: profileitem.length),
    );
  }
}
