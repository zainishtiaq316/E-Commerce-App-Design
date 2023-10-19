import 'package:ecommerceapp/Model/shippingAddressmodel.dart';
import 'package:ecommerceapp/widget/ShippingCard.dart';
import 'package:flutter/material.dart';

class ShippingStyle extends StatefulWidget {
  final Function(ShippingModel) onSelectShippingAddress;

  const ShippingStyle({
    Key? key,
    required this.onSelectShippingAddress,
  }) : super(key: key);

  @override
  _ShippingStyleState createState() => _ShippingStyleState();
}

class _ShippingStyleState extends State<ShippingStyle> {
  int selectedAddressIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.19,
            child: ShippingCard(
              shipCard: shipping[index],
              onSelectionChanged: (isSelected) {
                setState(() {
                  if (isSelected) {
                    if (selectedAddressIndex != -1) {
                      shipping[selectedAddressIndex].isSelected = false;
                    }
                    selectedAddressIndex = index;
                  } else {
                    selectedAddressIndex = -1;
                  }
                  shipping[index].isSelected = isSelected;
                });

                // Pass the selected address to the callback
                widget.onSelectShippingAddress(shipping[index]);
              },
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          height: 10,
        ),
        itemCount: shipping.length,
      ),
    );
  }
}
