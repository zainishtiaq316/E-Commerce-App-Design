import 'package:ecommerceapp/Constant/colors.dart';
import 'package:flutter/material.dart';

import '../Model/shippingAddressmodel.dart';

class ShippingCard extends StatelessWidget {
  final ShippingModel shipCard;
  final Function(bool) onSelectionChanged;

  const ShippingCard({
    super.key,
    required this.shipCard,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      shadowColor: Colors.grey,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 15, top: 10, bottom: 10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.15,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "${shipCard.name}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Edit",
                          style: TextStyle(
                              color: buttonColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "${shipCard.address}",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),
              Container(
                child: Text(
                  "${shipCard.city}, ${shipCard.state} ${shipCard.zipCode}, ${shipCard.country}",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: shipCard.isSelected,
                    checkColor: Colors.white,
                    activeColor: Colors.black,
                    onChanged: (value) {
                      onSelectionChanged(value ?? false);
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                      "Use as the Shipping Address",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
