import 'package:ecommerceapp/Constant/colors.dart';
import 'package:ecommerceapp/Model/categoriesModel.dart';
import 'package:flutter/material.dart';

class categoriesCard extends StatelessWidget {
  final categoriesModel categorycard;
  const categoriesCard({super.key, required this.categorycard});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Card(
        surfaceTintColor: Colors.white,
        elevation: 1,
        child: Container(
          child: Row(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    categorycard.name!,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  child: Image.asset(
                    categorycard.image!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
