import 'package:ecommerceapp/Model/paymentModel.dart';
import 'package:ecommerceapp/widget/paymentCard.dart';
import 'package:flutter/material.dart';

class paymentStyle extends StatefulWidget {
  final Function(PaymentModel) onSelectPayment;
  const paymentStyle({super.key, required this.onSelectPayment});

  @override
  State<paymentStyle> createState() => _paymentStyleState();
}

class _paymentStyleState extends State<paymentStyle> {
  @override
  Widget build(BuildContext context) {
    int selectedAddressIndex = -1;
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              child: paymentCard(
                payment: paymentItem[index],
                onSelectionChanged: (isSelected) {
                  setState(() {
                    if (isSelected) {
                      if (selectedAddressIndex != -1) {
                        paymentItem[selectedAddressIndex].isSelected = false;
                      }
                      selectedAddressIndex = index;
                    } else {
                      selectedAddressIndex = -1;
                    }
                    paymentItem[index].isSelected = isSelected;
                  });

                  // Pass the selected address to the callback
                  widget.onSelectPayment(paymentItem[index]);
                },
              )),
          separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
          itemCount: paymentItem.length),
    );
  }
}
