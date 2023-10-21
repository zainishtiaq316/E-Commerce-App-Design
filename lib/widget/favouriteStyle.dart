import 'package:ecommerceapp/Model/CategoryModel.dart';
import 'package:ecommerceapp/Model/bagModel.dart';
import 'package:ecommerceapp/widget/favouriteCard.dart';
import 'package:flutter/material.dart';

class favouriteStyle extends StatelessWidget {
  const favouriteStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.separated(
          itemBuilder: (context, index) => SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.17,
              child: favouriteCard(
                favCard: favouriteItemss[index],
              )),
          separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
          itemCount: favouriteItemss.length),
    );
  }
}
