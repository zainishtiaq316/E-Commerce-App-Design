import 'package:ecommerceapp/Model/bagModel.dart';
import 'package:ecommerceapp/Model/promoCodeModel.dart';
import 'package:ecommerceapp/widget/bagCard.dart';
import 'package:ecommerceapp/widget/myPromoCard.dart';
import 'package:flutter/material.dart';

class promoStyle extends StatelessWidget {
  const promoStyle({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: constraints.maxWidth < 600
              ? MediaQuery.of(context).size.height * 0.5
              : MediaQuery.of(context).size.height * 0.8,
          child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: constraints.maxWidth < 600
                    ? MediaQuery.of(context).size.height * 0.13
                    : MediaQuery.of(context).size.height * 0.2,
                child: promoCard(pCard: promocodeItem[index]),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
            itemCount: promocodeItem.length,
          ),
        );
      },
    );
  }
}
